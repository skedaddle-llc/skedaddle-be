# frozen_string_literal: true

class RestaurantsFacade
  def self.restaurants_near(city)
    restaurants = RestaurantsService.restaurants_near(city)
    if restaurants[:businesses]
      restaurants[:businesses][0..2].map do |restaurant_data|
        Restaurant.new(restaurant_data)
      end
    else
      []
    end
  end
end
