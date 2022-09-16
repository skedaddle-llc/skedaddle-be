# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'RestaurantsFacade' do
  it 'returns instances of restaurants', vcr: 'denver_restaurants' do
    restaurants = RestaurantsFacade.restaurants_near('Denver')
    expect(restaurants).to be_a(Array)
    expect(restaurants).to be_all(Restaurant)
    expect(restaurants.length).to eq(3)
  end

  it 'errors gracefully', vcr: 'bad_restaurants' do
    restaurants = RestaurantsFacade.restaurants_near('')
    expect(restaurants).to eq([])
  end
end
