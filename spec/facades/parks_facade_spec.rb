# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ParksFacade' do
  it 'returns instances of parks', vcr: 'austin_parks' do
    parks = ParksFacade.parks_near('Austin')
    expect(parks).to be_a(Array)
    expect(parks).to be_all(Park)
    expect(parks.length).to eq(3)
  end

  it 'errors gracefully', vcr: 'bad_park_search' do
    parks = ParksFacade.parks_near('not a real place')
    expect(parks).to eq([])
  end
end
