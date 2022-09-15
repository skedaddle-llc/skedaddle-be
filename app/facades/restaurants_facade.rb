# frozen_string_literal: true

class RestaurantsFacade
  def self.restaurants_near(city)
    restaurants = RestaurantsService.restaurants_near(city)[:businesses]
    restaurants[0..2].map { |restaurant_data| Restaurant.new(restaurant_data) }
  end
end
