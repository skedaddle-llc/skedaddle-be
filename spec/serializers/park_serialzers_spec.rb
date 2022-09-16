require 'rails_helper'

RSpec.describe ParkSerializer, :vcr do

  it "is able to get ParkSerializer" do
    parks = ParksFacade.parks_near('denver')

    serializer = ParkSerializer.format_parks(parks)

    expect(serializer).to be_a(Array)

    serializer.each do |park|
      expect(park[:name]).to be_a(String)
      expect(park[:city]).to be_a(String)
      expect(park[:state]).to be_a(String)
      expect(park[:country]).to be_a(String)
      expect(park[:description]).to be_a(String)
      expect(park[:directions]).to be_a(String)
      expect(park[:lat]).to be_a(String)
      expect(park[:lon]).to be_a(String)
      expect(park[:activities]).to be_a(Array)
    end
  end

end