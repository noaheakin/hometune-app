Rails.application.routes.draw do
  resources :venue_comments
  resources :artist_comments
  resources :concerts
  resources :venues
  resources :artists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
