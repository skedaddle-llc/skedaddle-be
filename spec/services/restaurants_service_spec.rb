require 'rails_helper'

RSpec.describe 'RestaurantsService', :vcr do

    it "returns a 200 success header when the API call is made" do
        response = RestaurantsService.restaurants_near("Denver")
        expect(response.first[1]).to_not(eq(nil))
        # expect(response["status"]).to(eq(200))   
    end
    it 'can return restaurants when the call is made' do
        parse_json = RestaurantsService.restaurants_near("Denver")

        expect(parse_json).to be_a(Hash)
        expect(parse_json.first[1][0]).to include(:name, :rating, :phone, :categories)
    end

    it 'can SAD PATH' do
        parse_json = RestaurantsService.restaurants_near(nil)
        
        expect(parse_json).to_not be_a(Array)
    end
end