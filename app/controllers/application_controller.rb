# frozen_string_literal: true

class ApplicationController < ActionController::API
  def empty400
    render json: { error: 'No results' }, status: 400
  end

  def render_parks(parks)
    render json: ParkSerializer.format_parks(parks)
  end

  def render_restaurants(restaurants)
    render json: RestaurantSerializer.format_restaurants(restaurants)
  end
end
