# frozen_string_literal: true

class ApplicationController < ActionController::API
  def empty400
    render json: { error: 'No results', data: {} }, status: 400
  end

  def render_park(park)
    render json: ParkSerializer.format_parks(park)
  end

  def render_restaurant(restaurant)
    render json: RestaurantSerializer.format_restaurant(restaurant)
  end
end
