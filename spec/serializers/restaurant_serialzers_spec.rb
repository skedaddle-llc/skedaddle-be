require 'rails_helper'

RSpec.describe RestaurantSerializer, :vcr do

  it "is able to get ParkSerializer" do
    restaurants = RestaurantsFacade.restaurants_near('denver')

    serializer = RestaurantSerializer.format_restaurant(restaurants)
    expect(serializer).to be_a(Array)
    serializer.each do |restaurant|
      expect(restaurant[:name]).to be_a(String)
      expect(restaurant[:rating]).to be_a(Float)
      expect(restaurant[:price]).to be_a(String)
      expect(restaurant[:image_url]).to be_a(String)
      expect(restaurant[:url]).to be_a(String)
    end
  end
end
