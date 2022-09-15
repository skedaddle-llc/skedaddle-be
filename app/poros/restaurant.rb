# frozen_string_literal: true

class Restaurant
  attr_reader :name,
              :rating,
              :price,
              :image_url,
              :url,
              :categories,
              :address,
              :phone

  def initialize(data)
    @name = data[:name]
    @rating = data[:rating]
    @price = data[:price]
    @image_url = data[:image_url]
    @url = data[:url]
    @categories = data[:categories].map { |cat| cat[:title] }
    @address = data[:location][:display_address] * ', '
    @phone = data[:display_phone]
  end
end
