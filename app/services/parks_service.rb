# frozen_string_literal: true

class ParksService
  def self.parks_near(city)
    response = conn.get('/activity/') do |route|
      route.params['limit'] = '3'
      route.params['q-city_cont'] = nil_check(city)
    end
    parse_json(response)
  end

  def self.conn
    Faraday.new(url: 'https://trailapi-trailapi.p.rapidapi.com') do |faraday|
      faraday.headers['X-RapidAPI-Key'] = ENV.fetch('trail_api_key', nil)
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.nil_check(search)
    ['', nil].include?(search) ? 'badrequest' : search
  end
end
