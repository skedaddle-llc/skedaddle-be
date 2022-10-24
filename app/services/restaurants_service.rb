# frozen_string_literal: true

class RestaurantsService
  def self.restaurants_near(location)
    geocode = GeocodeFacade.geocode_for(location)
    response = conn.get('search') do |route|
      route.params['limit'] = '3'
      route.params['latitude'] = geocode[:lat]
      route.params['longitude'] = geocode[:lon]
      route.params['sort_by'] = 'rating'
      route.params['category'] = 'food'
    end
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
