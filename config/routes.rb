# == Route Map
#
Rails.application.routes.draw do
  get "welcome/index"

  root "welcome#index"

  resources :meals
  resources :diets
  resources :people
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
