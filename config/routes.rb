# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :parks, only: %i[index]
      resources :restaurants, only: %i[index]
    end
  end
end
