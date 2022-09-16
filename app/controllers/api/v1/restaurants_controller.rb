# frozen_string_literal: true

module Api
  module V1
    class RestaurantsController < ApplicationController
      def index
        results = RestaurantsFacade.restaurants_near(search_params[:search])
        render_restaurants(results)
      end

      private

      def search_params
        params.permit(:search)
      end
    end
  end
end
