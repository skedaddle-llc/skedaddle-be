# frozen_string_literal: true

class RestaurantSerializer
  def self.format_restaurants(restaurants)
    restaurants.map do |restaurant|
      {
        name: restaurant.name,
        rating: restaurant.rating,
        price: restaurant.price,
        image_url: restaurant.image_url,
        url: restaurant.url,
        categories: restaurant.categories,
        address: restaurant.address,
        phone: restaurant.phone
      }
    end
  end
end
