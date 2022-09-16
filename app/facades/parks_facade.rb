# frozen_string_literal: true

class ParksFacade
  def self.parks_near(city)
    nil_check_city = nil_check(city)
    parks = ParksService.parks_near(nil_check_city)
    !parks.value?('no_results') ? parks.values[0..2].map { |park_data| Park.new(park_data) } : []
  end

  def self.nil_check(search)
    ['', nil].include?(search) ? 'badrequest' : search
  end
end
