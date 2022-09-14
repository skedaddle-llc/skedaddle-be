class ParksFacade
  def self.parks_near(city)
    all_parks = ParksService.parks_near(city)
    all_parks.map do |park_data|
      park = Park.new(park_data.last)
    end
  end
end