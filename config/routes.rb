# == Route Map
#
Rails.application.routes.draw do
  resources :variation_weights
  get "welcome/index"

  root "welcome#index"
  get "cadastrando_dados", to: "welcome#create_person", as: :first_login

  post "dashboard/:id", to: "dashboard#index", as: :dashboard

  resources :people
  resources :meals
  resources :diets

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
