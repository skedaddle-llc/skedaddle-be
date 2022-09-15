# frozen_string_literal: true

class Restaurant
  attr_reader :name,
              :rating,
              :price,
              :image_url,
              :url

  def initialize(data)
    @name = data[:name]
    @rating = data[:rating]
    @price = data[:price]
    @image_url = data[:image_url]
    @url = data[:url]
  end
end
