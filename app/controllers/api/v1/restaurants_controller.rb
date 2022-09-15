# frozen_string_literal: true

module Api
  module V1
    class RestaurantsController < ApplicationController
      def index
        results = RestaurantsFacade.restaurants_near(params[:search])
        render_restaurant(results)
      end
    end
  end
end
