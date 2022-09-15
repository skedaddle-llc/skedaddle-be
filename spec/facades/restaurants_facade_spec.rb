require 'rails_helper'

RSpec.describe 'RestaurantsFacade' do
    it 'returns instances of restaurants' do
        restaurants = RestaurantsFacade.restaurants_near("Austin")
        expect(restaurants).to be_a(Array)
        expect(restaurants).to be_all(Restaurant)
    end
end