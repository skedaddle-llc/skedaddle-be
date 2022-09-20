# frozen_string_literal: true

class ParkSerializer
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
        activities: park.activities,
        url: park.url,
        thumbnail: park.thumbnail
      }
    end
  end
end
