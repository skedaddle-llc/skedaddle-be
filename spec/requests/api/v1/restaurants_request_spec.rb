require 'rails_helper'

RSpec.describe "Restaurants API" do
    xit "sends a list of restaurants" do
        allow RestaurantsFacade.to_receive restaurants_near('xyz').and_return
        [ restaurant_1 = create(:restaurant),
        restaurant_2 = create(:restaurant),
        restaurant_3 = create(:restaurant)]
    
        get '/api/v1/restaurants'

        expect(response).to be_successful
        items = JSON.parse(response.body, symbolize_names: true)
        expect(items[:restaurant].count).to eq(3)
    end
    it "returns Get /index", :vcr do
        get '/api/v1/restaurants'
        expect(response.body).to eq('{"status":"online"}')
        expect(response.status).to eq(200)
    end
end