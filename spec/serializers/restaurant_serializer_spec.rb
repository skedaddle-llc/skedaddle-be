require 'rails_helper'

RSpec.describe RestaurantSerializer do
    it "can return a serialized instance of a poro" do
    data = {
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
  
      restaurant = Restaurant.new(data)

    restaurant_serialized = RestaurantSerializer.new(restaurant).resource

    expect(restaurant_serialized).to be_an(Restaurant)

    # it { is_expected.to have_jsonapi_attributes('name' => @name) }

    # it { is_expected.to have_jsonapi_attributes('address' => @address) }

    # it { is_expected.to have_jsonapi_attributes('rating' => @rating) }

    # it { is_expected.to have_jsonapi_attributes('categories' => @categories) }

    # it { is_expected.to have_jsonapi_attributes('phone' => @phone) }
    end
end
