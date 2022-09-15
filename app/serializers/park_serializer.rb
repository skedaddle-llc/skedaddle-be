# frozen_string_literal: true

class ParkSerializer
  include JSONAPI::Serializer
  attributes :name, :city, :state, :country, :description, :directions, :lat, :lon
end
