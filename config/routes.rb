Rails.application.routes.draw do
  resources :venue_comments, only: [:show, :new, :create]
  resources :artist_comments, only: [:show, :new, :create]
  resources :concerts, only: [:index, :show]
  resources :venues, only: [:index, :show]
  resources :artists, only: [:index, :show]
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]

  resources :login, only: [:new, :create]
  delete "logout", to: "login#destroy", as: "log_out"
  get "homepage", to: "homepage#index", as: "hometune"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
