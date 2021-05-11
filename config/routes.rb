# == Route Map
#
Rails.application.routes.draw do
  resources :variation_weights
  get "welcome/index"

  root "welcome#index"

  get "dashboard", to: "dashboard#index", as: :dashboard

  resources :meals
  resources :diets
  resources :people
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
