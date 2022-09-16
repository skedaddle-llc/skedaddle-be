# frozen_string_literal: true

class RestaurantSerializer
  attr_reader :resource
  # include JSONAPI::Serializer
  # attributes :name, :rating, :price, :image_url, :url
  def self.format_restaurant(restaurants)
    restaurants.map do |restaurant|
      {
        name: restaurant.name,
        rating: restaurant.rating,
        price: restaurant.price,
        image_url: restaurant.image_url,
        url: restaurant.url,
      }
    end
  end
end
