# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem 'webpacker'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use gem faraday to make request outside this API
gem 'faraday'
# Use gem CORS for handling Cross-Origin Resource Sharing (CORS)
gem 'rack-cors', '~> 1.0.5'

# Use Grape as the framework for creating REST-like APIs
gem 'grape', '~> 1.2'
gem 'grape-entity'
gem 'grape_on_rails_routes'

# OpenCage geocoding API
gem 'opencage-geocoder', '~> 2.1', '>= 2.1.1'

# Geocoder, Coordinates calculations
gem 'geocoder'

# Use listen to avoid polling for changes
gem 'listen'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# Sharing configuration variables across environments
gem 'dotenv-rails', groups: %i[development test]

# Pagination gem
gem 'kaminari'

# Cron jobs
gem 'rufus-scheduler'

group :development, :test, :production do
  # Use faker to generate fake data

  gem 'faker'
  # Use database cleaner to remove fake data
  gem 'database_cleaner'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Use Rspec to support Rspec examples for requests, controllers, models, etc
  gem 'rspec-rails', '~> 3.9'
  #  Use factory bot to create mockups of database
  gem 'factory_bot_rails', '~> 4.0'
  # Use shoulda for one line simple test
  gem 'shoulda-matchers', '~> 3.1'
  # Use simplecov to see test code coverage
  gem 'simplecov'

  gem 'capybara'
  gem 'webmock', '~> 3.8'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # Use rubocop to analyze code
  gem 'rubocop', '~> 0.59.0', require: false
  # Our motivational gem!
  # gem 'be_a_dragon' '0.1.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
