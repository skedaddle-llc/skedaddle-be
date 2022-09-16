# frozen_string_literal: true

class ApplicationController < ActionController::API
  def render_parks(park)
    render json: ParkSerializer.format_parks(park)
  end

  def render_restaurants(restaurant)
    render json: RestaurantSerializer.format_restaurants(restaurant)
  end
end
