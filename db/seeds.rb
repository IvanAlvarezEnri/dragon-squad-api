# frozen_string_literal: true

require 'database_cleaner'
require 'opencage/geocoder'
# This cleans after each rails db:seed (we need this on develop process)
DatabaseCleaner.clean_with(:truncation)

100.times do
  lat = Faker::Number.normal(mean: 40.4, standard_deviation: 0.25)
  lng = Faker::Number.normal(mean: -3.7, standard_deviation: 0.25)

  Location.find_or_create_by(name: LocationSearcher.reverse_geocode(lat, lng).address) do |location|
    location.lat = lat
    location.lng = lng
    location.total_rooms = 0
  end
end

locations_ids = Location.ids

500.times do
  location_id = locations_ids.sample
  Room.create!(
    title: Faker::Quotes::Shakespeare.hamlet_quote,
    description: Faker::Lorem.paragraph,
    price: Faker::Number.number(digits: 3),
    owner: Faker::Games::Pokemon.name,
    location_id: location_id,
    bills_included: Faker::Boolean.boolean,
    deposit: Faker::Boolean.boolean,
    verified: Faker::Boolean.boolean,
    roommate_girls: Faker::Number.number(digits: 1),
    roommate_boys: Faker::Number.number(digits: 1),
    room_size: Faker::Number.number(digits: 2),
    property_size: Faker::Number.number(digits: 2),
  )
end

rooms_ids = Room.ids

2000.times do
  width = Faker::Number.normal(mean: 1280, standard_deviation: 50).to_i
  height = Faker::Number.normal(mean: 720, standard_deviation: 50).to_i
  Photo.create!(
    room_id: rooms_ids.sample,
    url: "http://placehold.it/#{width}x#{height}"
  )
end
