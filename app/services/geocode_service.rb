# frozen_string_literal: true

class GeocodeService
  def self.geocode_for(location)
    response = conn.get('/v1/forward') do |route|
      route.params['query'] = nil_check(location)
      route.params['access_key'] = ENV.fetch('geocode_api_key', nil)
    end
    parse_json(response)
  end

  def self.conn
    Faraday.new(url: 'http://api.positionstack.com')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.nil_check(search)
    ['', nil].include?(search) ? 'badrequest' : search
  end
end
