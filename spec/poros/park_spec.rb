# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Park do
  before :each do
    @data = {
      "name": 'Green Mountain',
      "city": 'Denver',
      "state": 'Colorado',
      "country": 'United States',
      "description": 'This park has three parking areas. The loop is the same from all. From any trailhead, begin a clockwise loop in the park. On the south-east sides of the park, this loop maintains fairly constant elevation as it winds around the base of Green mountain. On the north west side of the mountain, a jeep road will take you to the top. On top, follow the jeep road past the radio towers, and back onto singletrack on the south east leg of the loop. Descend this singletrack, and finish the loop back to your car.',
      "directions": 'From I-25, take 6th Ave. west. Drive approximately 6 miles to Kipling. Take Kipling south for 2 miles before taking a right on Alameda. Stay on Alameda for 3 miles until you see a parking area on the right. This trail is part of William Frederick Hayden Park.',
      "lat": '39.6967',
      "lon": '-105.1922',
      "parent_id": '0',
      "place_id": '694',
      "activities": {
        "mountain biking": {
          "url": 'http://www.singletracks.com/item.php?c=1&i=14',
          "length": '7',
          "description": 'This park has three parking areas. The loop is the same from all. From any trailhead, begin a clockwise loop in the park. On the south-east sides of the park, this loop maintains fairly constant elevation as it winds around the base of Green mountain. On the north west side of the mountain, a jeep road will take you to the top. On top, follow the jeep road past the radio towers, and back onto singletrack on the south east leg of the loop. Descend this singletrack, and finish the loop back to your car.',
          "name": 'Green Mountain',
          "rank": '0',
          "rating": '3.32',
          "thumbnail": 'http://images.singletracks.com/2009/trails/01/14-1180981080.jpg',
          "activity_type": '5',
          "activity_type_name": 'mountain biking',
          "attribs": {
            "length": '7',
            "nightride": '1'
          },
          "place_activity_id": '936404'
        },
        "hiking": {
          "url": 'http://www.tripleblaze.com/trail.php?c=3&i=275',
          "length": '7',
          "description": 'With more than 2,400 acres of open space, William Frederick Hayden Park on Green Mountain is the second largest park in Lakewood. &lt;br /&gt;<br />The park features a challenging network of multi-use trails. The summit, at 6,800 feet, offers unique and stunning views of the Denver metropolitan area to the east, as well as high mountain peaks to the west.',
          "name": 'Green Mountain--William Frederick Hayden Park',
          "rank": '0',
          "rating": '0.00',
          "thumbnail": 'http://images.tripleblaze.com/2009/02/275-1223987631.jpg',
          "activity_type": '2',
          "activity_type_name": 'hiking',
          "attribs": {
            "length": '7'
          },
          "place_activity_id": '945866'
        }
      }
    }

    @park = Park.new(@data)
  end

  it 'exists' do
    expect(@park).to be_a(Park)
  end

  it 'has attributes' do
    expect(@park.name).to eq('Green Mountain')
    expect(@park.city).to eq('Denver')
    expect(@park.state).to eq('Colorado')
    expect(@park.country).to eq('United States')
    expect(@park.description).to include('This park has three parking areas')
    expect(@park.directions).to include('From I-25, take 6th Ave')
    expect(@park.lat).to eq('39.6967')
    expect(@park.lon).to eq('-105.1922')
  end
end
