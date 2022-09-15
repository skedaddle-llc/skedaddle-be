# frozen_string_literal: true

class RestaurantSerializer
  include JSONAPI::Serializer
  attributes :name, :rating, :price, :image_url, :url
end
