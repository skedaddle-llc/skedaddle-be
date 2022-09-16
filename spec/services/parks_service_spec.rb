# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ParksService do
  it 'gets parks', vcr: 'denver_parks' do
    response = ParksService.parks_near('Denver')
    expect(response).to be_a(Hash)
    expect(response.length).to eq(3)
    expect(response.values).to be_all(Hash)
    response.each_value do |park|
      expect(park).to have_key(:name)
      expect(park).to have_key(:city)
      expect(park).to have_key(:state)
      expect(park).to have_key(:country)
      expect(park).to have_key(:description)
      expect(park).to have_key(:directions)
      expect(park).to have_key(:lat)
      expect(park).to have_key(:lon)
      expect(park).to have_key(:activities)
    end
  end

  it 'can SAD PATH', vcr: 'bad_parks' do
    response = ParksService.parks_near('')
    expect(response).to be_a(Hash)
    expect(response).to eq({ code: 'no_results', data: { status: 404 }, message: 'No results found.' })
  end
end
