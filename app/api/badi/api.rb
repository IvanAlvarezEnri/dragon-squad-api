module Badi
  class Api < Grape::API


    format :json
    content_type :json, 'application/json; charset=utf-8'

    # I will try to include this soon!
    # include Helpers
    class Grape::Middleware::Error
      def error_message(code, text)
        {
          :error => {
            :code => code.to_s,
            :message => text
          }
        }.to_json
      end
    end

    rescue_from ActiveRecord::RecordNotFound do |e|
      rack_response(error_message(:not_found, 'Record was not found'), 404)
    end

    mount Badi::Health
    mount Badi::V1::Rooms
    mount Badi::V1::Locations
  end
end
