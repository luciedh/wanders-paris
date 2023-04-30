Rails.application.routes.draw do
  devise_for :users
  root to: "places#index"
  resources :places, only: [:index, :show]
  get "search/trip", to: "trips#search_trip", as: :search_trip
  resources :trips, only: [:index, :show]
end
