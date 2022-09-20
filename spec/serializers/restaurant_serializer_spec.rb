# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RestaurantSerializer do
  it 'can return a serialized instance of a poro', vcr: 'denver_restaurants' do
    restaurants = RestaurantsFacade.restaurants_near('Denver')
    serializer = RestaurantSerializer.format_restaurants(restaurants)

    expect(serializer).to be_a(Array)
    serializer.each do |restaurant|
      expect(restaurant[:name]).to be_a(String)
      expect(restaurant[:rating]).to be_a(Float)
      expect(restaurant[:price]).to be_a(String)
      expect(restaurant[:image_url]).to be_a(String)
      expect(restaurant[:url]).to be_a(String)
      expect(restaurant[:categories]).to be_a(String)
      expect(restaurant[:address]).to be_a(String)
      expect(restaurant[:phone]).to be_a(String)
    end
  end
end
