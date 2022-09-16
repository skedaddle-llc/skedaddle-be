# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Restaurants API' do
  it 'sends a list of restaurants', vcr: 'denver_restaurants' do
    get '/api/v1/restaurants?search=Denver'

    expect(response).to be_successful
    expect(response.status).to eq(200)

    restaurants = JSON.parse(response.body, symbolize_names: true)
    expect(restaurants.count).to eq(3)
    expect(restaurants).to be_a(Array)
    expect(restaurants).to be_all(Hash)

    restaurants.each do |restaurant|
      expect(restaurant).to have_key(:name)
      expect(restaurant[:name]).to be_a(String)
      expect(restaurant).to have_key(:rating)
      expect(restaurant[:rating]).to be_a(Float)
      expect(restaurant).to have_key(:price)
      expect(restaurant[:price]).to be_a(String)
      expect(restaurant).to have_key(:image_url)
      expect(restaurant[:image_url]).to be_a(String)
      expect(restaurant).to have_key(:url)
      expect(restaurant[:url]).to be_a(String)
      expect(restaurant).to have_key(:categories)
      expect(restaurant[:categories]).to be_a(Array)
      expect(restaurant).to have_key(:address)
      expect(restaurant[:address]).to be_a(String)
      expect(restaurant).to have_key(:phone)
      expect(restaurant[:phone]).to be_a(String)
    end
  end
end
