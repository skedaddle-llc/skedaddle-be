class RestaurantsFacade
    def self.restaurants_near(city)
        all_restaurants = RestaurantsService.restaurants_near(city)[:businesses]
        all_restaurants.map do |restaurant_data|
            restaurant = Restaurant.new(restaurant_data)
        end
    end
end