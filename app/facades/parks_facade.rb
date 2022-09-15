# frozen_string_literal: true

class ParksFacade
  def self.parks_near(city)
    parks = ParksService.parks_near(city)
    !parks.value?('no_results') ? parks.values[0..2].map { |park_data| Park.new(park_data) } : []
  end
end
