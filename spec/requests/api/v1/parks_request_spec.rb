# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Parks API' do
  it 'sends a list of parks', vcr: 'denver_parks' do
    get '/api/v1/parks?search=Denver'

    expect(response).to be_successful
    expect(response.status).to eq(200)

    parks = JSON.parse(response.body, symbolize_names: true)
    expect(parks.count).to eq(3)
    expect(parks).to be_a(Array)
    expect(parks).to be_all(Hash)

    parks.each do |park|
      expect(park).to have_key(:name)
      expect(park[:name]).to be_a(String)
      expect(park).to have_key(:city)
      expect(park[:city]).to be_a(String)
      expect(park).to have_key(:state)
      expect(park[:state]).to be_a(String)
      expect(park).to have_key(:country)
      expect(park[:country]).to be_a(String)
      expect(park).to have_key(:description)
      expect(park[:description]).to be_a(String)
      expect(park).to have_key(:directions)
      expect(park[:directions]).to be_a(String)
      expect(park).to have_key(:lat)
      expect(park[:lat]).to be_a(String)
      expect(park).to have_key(:lon)
      expect(park[:lon]).to be_a(String)
      expect(park).to have_key(:activities)
      expect(park[:activities]).to be_a(Array)
    end
  end

  it 'can sad path', vcr: 'bad_parks' do
    get '/api/v1/parks'

    expect(response).to be_successful
    expect(response.status).to eq(200)

    parks = JSON.parse(response.body, symbolize_names: true)
    expect(parks.count).to eq(0)
    expect(parks).to be_empty
  end
end
