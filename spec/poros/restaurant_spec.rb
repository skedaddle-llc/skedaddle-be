# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Restaurant do
  before :each do
    @data = {
      "id": 'eCkWoMKHh5PoNqYvdyviRA',
      "alias": 'spinellis-market-denver-3',
      "name": "Spinelli's Market",
      "image_url": 'https://s3-media4.fl.yelpcdn.com/bphoto/I41o6sGOiWJwgO5yxxQFwg/o.jpg',
      "is_closed": false,
      "url": 'https://www.yelp.com/biz/spinellis-market-denver-3?adjust_creative=3gRykLgv5-_vxngoRlAFrQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=3gRykLgv5-_vxngoRlAFrQ',
      "review_count": 246,
      "categories": [
        {
          "alias": 'delis',
          "title": 'Delis'
        },
        {
          "alias": 'gourmet',
          "title": 'Specialty Food'
        },
        {
          "alias": 'grocery',
          "title": 'Grocery'
        }
      ],
      "rating": 4.5,
      "coordinates": {
        "latitude": 39.751168,
        "longitude": -104.933227
      },
      "transactions": [
        'pickup'
      ],
      "price": '$$',
      "location": {
        "address1": '4621 E 23rd Ave',
        "address2": '',
        "address3": nil,
        "city": 'Denver',
        "zip_code": '80207',
        "country": 'US',
        "state": 'CO',
        "display_address": [
          '4621 E 23rd Ave',
          'Denver, CO 80207'
        ]
      },
      "phone": '+13033298143',
      "display_phone": '(303) 329-8143',
      "distance": 101.23958944836664
    }

    @restaurant = Restaurant.new(@data)
  end

  it 'exists' do
    expect(@restaurant).to be_a(Restaurant)
  end

  it 'has attributes' do
    expect(@restaurant.name).to eq("Spinelli's Market")
    expect(@restaurant.rating).to eq(4.5)
    expect(@restaurant.price).to eq('$$')
    expect(@restaurant.image_url).to eq('https://s3-media4.fl.yelpcdn.com/bphoto/I41o6sGOiWJwgO5yxxQFwg/o.jpg')
    expect(@restaurant.url).to include('https://www.yelp.com/biz/spinellis-market-denver')
    expect(@restaurant.categories).to eq(['Delis', 'Specialty Food', 'Grocery'])
    expect(@restaurant.address).to eq('4621 E 23rd Ave, Denver, CO 80207')
    expect(@restaurant.phone).to eq('(303) 329-8143')
  end

  it 'errors gracefully' do
    bad_restaurant = Restaurant.new({})
    expect(bad_restaurant.name).to eq(nil)
    expect(bad_restaurant.rating).to eq(nil)
    expect(bad_restaurant.price).to eq(nil)
    expect(bad_restaurant.image_url).to eq(nil)
    expect(bad_restaurant.url).to eq(nil)
    expect(bad_restaurant.categories).to eq([])
    expect(bad_restaurant.address).to eq([])
    expect(bad_restaurant.phone).to eq(nil)
  end
end
