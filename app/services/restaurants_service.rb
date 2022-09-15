class RestaurantsService
    
    def self.restaurants_near(city)
        response = conn.get("/search?term=restaurants&location=#{city}")
        parse_json(response)
    end
    
    private
    
    def self.conn
        Faraday.new(url: 'https://api.yelp.com/v3/businesses') do |faraday|
            faraday.headers['Authorization'] = 'CiVfkw3Ed9hpNA0K27ZJ2JxFF2fcjU_YxVypgceHG6mDP2Zj4DzeHnKaXv5MMLm7BxkL8D1KvbReCXpeSeWgyBkd2ulVCoQ1Rt3pZx5JZ1surjBrIAfqpxLuZxEgY3Yx'
        end
    end
    
    def self.parse_json(response)
        require 'pry'; binding.pry
        JSON.parse(response.body, symbolize_names: true)
    end
end