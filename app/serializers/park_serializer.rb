class ParkSerializer
  attr_reader :name, :city, :state, :country, :description, :directions, :lat, :lon, :activities
  def self.format_parks(parks)
    parks.map do |park|
      {
        name: park.name,
        city: park.city,
        state: park.state,
        country: park.country,
        description: park.description,
        directions: park.directions,
        lat: park.lat,
        lon: park.lon,
        activities: park.activities
      }
    end
  end

end
