# frozen_string_literal: true

class GeocodeFacade
  def self.geocode_for(location)
    geocode = GeocodeService.geocode_for(nil_check(location))
    if geocode[:data].empty?
      { lat: nil, lon: nil }
    else
      { lat: geocode[:data].first[:latitude], lon: geocode[:data].first[:longitude] }
    end
  end

  def self.nil_check(search)
    ['', nil].include?(search) ? 'badrequest' : search
  end
end
