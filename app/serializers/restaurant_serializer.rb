# frozen_string_literal: true

class RestaurantSerializer
  attr_reader :resource
  include JSONAPI::Serializer
  attributes :name, :rating, :price, :image_url, :url
end
