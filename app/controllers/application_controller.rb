# frozen_string_literal: true

class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :not_found404
  rescue_from ActiveRecord::RecordInvalid, with: :not_found404

  def not_found404
    render json: { error: 'Not found' }, status: 404
  end

  def empty400
    render json: { error: 'No results' }, status: 400
  end

  def render_park(park)
    render json: ParkSerializer.new(park)
  end

  def render_restaurant(restaurant)
    render json: RestaurantSerializer.new(restaurant)
  end
end
