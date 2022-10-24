# frozen_string_literal: true

class ParksFacade
  def self.parks_near(location)
    nil_check_location = nil_check(location)
    parks = ParksService.parks_near(nil_check_location)
    !parks.value?('invalid_input') ? parks.values[0..2].map { |park_data| Park.new(park_data) } : []
  end

  def self.nil_check(search)
    ['', nil].include?(search) ? 'badrequest' : search
  end
end
