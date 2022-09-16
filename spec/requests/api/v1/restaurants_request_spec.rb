require 'rails_helper'

RSpec.describe "Restaurants API" do
    it "returns Get /index", :vcr do
        get '/api/v1/restaurants'
        expect(response).to be_successful
        expect(response.status).to eq(200)
    end
end
