# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GeocodeService do
  it 'gets lat/lon', vcr: 'denver_geocode' do
    response = GeocodeService.geocode_for('Denver')
    expect(response).to be_a(Hash)
    response[:data].each do |location|
      expect(location).to have_key(:latitude)
      expect(location).to have_key(:longitude)
      expect(location).to have_key(:type)
      expect(location).to have_key(:label)
    end
  end

  it 'can SAD PATH', vcr: 'bad_geocode' do
    response = GeocodeService.geocode_for('')
    expect(response).to be_a(Hash)
    expect(response).to eq({ data: [] })
  end
end
