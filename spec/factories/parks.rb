# frozen_string_literal: true

FactoryBot.define do
  factory :park do
    name { Faker::Address.community }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country { Faker::Address.country }
    description { Faker::Lorem.sentence }
    directions { Faker::Lorem.sentence }
    lat { Faker::Address.latitude }
    lon { Faker::Address.longitude }
    activities { Faker::Lorem.words(number: 2) }
  end
end
