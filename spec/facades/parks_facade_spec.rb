require 'rails_helper'

RSpec.describe 'ParksFacade' do
  it 'returns instances of parks', vcr: 'austin_parks' do
    parks = ParksFacade.parks_near("Austin")
    expect(parks).to be_a(Array)
    expect(parks).to be_all(Park)
  end
end