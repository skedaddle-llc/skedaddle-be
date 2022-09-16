# frozen_string_literal: true

module Api
  module V1
    class ParksController < ApplicationController
      def index
        results = ParksFacade.parks_near(search_params[:search])
        render_parks(results)
      end

      private

      def search_params
        params.permit(:search)
      end
    end
  end
end
