# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'RestaurantsFacade' do
  it 'returns instances of restaurants', vcr: 'austin_restaurants' do
    restaurants = RestaurantsFacade.restaurants_near('Austin')
    expect(restaurants).to be_a(Array)
    expect(restaurants).to be_all(Restaurant)
    expect(restaurants.length).to eq(3)
  end

  it 'errors gracefully', vcr: 'bad_restaurant_search' do
    restaurants = RestaurantsFacade.restaurants_near('not a real place')
    expect(restaurants).to eq([])
  end
end
