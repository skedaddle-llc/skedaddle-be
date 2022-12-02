# frozen_string_literal: true

class ParksService
  def self.parks_near(location)
    geocode = GeocodeFacade.geocode_for(location)
    response = conn.get('/activity/') do |route|
      route.params['limit'] = '3'
      route.params['lat'] = nil_check(geocode[:lat])
      route.params['lon'] = nil_check(geocode[:lon])
      route.params['radius'] = '100'
    end
    parse_json(response)
  end

  def self.conn
    Faraday.new(url: 'https://trailapi-trailapi.p.rapidapi.com') do |faraday|
      faraday.headers['X-RapidAPI-Key'] = ENV.fetch('trail_api_key', nil)
    end
  end

  def self.parse_json(response)
    response.body.include?('!DOCTYPE') ? {code: 'invalid_input'} : JSON.parse(response.body, symbolize_names: true)
  end

  def self.nil_check(search)
    ['', nil].include?(search) ? 'badrequest' : search
  end
end
