class RestaurantsService
    def self.restaurants_near(city)
        response = conn.get("search?term=restaurants&location=#{city}&sort_by=rating")
        parse_json(response)
    end

    def self.conn
        Faraday.new(url: 'https://api.yelp.com/v3/businesses') do |faraday|
            faraday.headers['authorization'] = "Bearer #{ENV['yelp_api_key']}"
        end
    end

    def self.parse_json(response)
        JSON.parse(response.body, symbolize_names: true)
    end
end