class ParksService
  def self.parks_near(city)
    response = conn.get("/activity/?q-city_cont=#{city}")
    parse_json(response)
    # require 'pry'; binding.pry
  end

  private

  def self.conn
    Faraday.new(url: 'https://trailapi-trailapi.p.rapidapi.com') do |faraday|
      faraday.headers['X-RapidAPI-Key'] = ''
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end