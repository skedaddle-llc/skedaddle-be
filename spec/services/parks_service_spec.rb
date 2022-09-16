require 'rails_helper'

RSpec.describe 'ParksService', :vcr do

    it "returns a 200 success header when the API call is made" do
        response = ParksService.parks_near("Denver")
        expect(response.first[1]).to_not(eq(nil))
    end

    it 'can return restaurants when the call is made' do
        parse_json = ParksService.parks_near("Denver")

        expect(parse_json).to be_a(Hash)
    end

    it 'can SAD PATH' do
        parse_json = ParksService.parks_near("xyz")

        expect(parse_json).to_not be_a(Array)
    end
end
