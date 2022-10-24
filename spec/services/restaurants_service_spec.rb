# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RestaurantsService do
  it 'gets restaurants', vcr: 'denver_restaurants' do
    response = RestaurantsService.restaurants_near('Denver')
    expect(response).to be_a(Hash)
    expect(response.length).to eq(3)
    response[:businesses].each do |restaurant|
      expect(restaurant).to have_key(:name)
      expect(restaurant).to have_key(:rating)
      expect(restaurant).to have_key(:image_url)
      expect(restaurant).to have_key(:url)
      expect(restaurant).to have_key(:categories)
      expect(restaurant).to have_key(:location)
      expect(restaurant).to have_key(:display_phone)
    end
  end

  it 'can SAD PATH', vcr: 'bad_restaurants' do
    response = RestaurantsService.restaurants_near('')
    expect(response).to be_a(Hash)
    expect(response).to eq({
                             error: {
                               code: 'VALIDATION_ERROR',
                               description: 'Please specify a location or a latitude and longitude'
                             }
                           })
  end
end
