# frozen_string_literal: true

module Api
  module V1
    class ParksController < ApplicationController
      def index
        results = ParksFacade.parks_near(params[:search])
        render_park(results)
      end
    end
  end
end
