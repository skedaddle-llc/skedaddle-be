# frozen_string_literal: true

FactoryBot.define do
  factory :restaurant do
    name { Faker::Restaurant.name }
    rating { rand(5) }
    price { '$' }
    image_url { Faker::Lorem.word }
    url { Faker::Lorem.word }
    categories { Faker::Lorem.words(number: 2) }
    phone { Faker::PhoneNumber.cell_phone }
  end
end
