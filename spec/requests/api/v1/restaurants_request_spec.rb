require 'rails_helper'

RSpec.describe "Restaurants API" do
    it "sends a list of restaurants" do
        restaurant_1 = create(:restaurant)
        restaurant_2 = create(:restaurant)
        restaurant_3 = create(:restaurant)
        get '/api/v1/restaurants'

        expect(response).to be_successful
        items = JSON.parse(response.body, symbolize_names: true)
        expect(items[:restaurant].count).to eq(3)

    end
end