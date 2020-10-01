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

  post "alphabetized_venue_button", to: "venues#alphabetized_venue_button", as: "alphabetized_venue_button"
  post "most_popular_venue_button", to: "venues#most_popular_venue_button", as: "most_popular_venue_button"
  post "least_popular_venue_button", to: "venues#least_popular_venue_button", as: "least_popular_venue_button"
  post "by_location_venue_button", to: "venues#by_location_venue_button", as: "by_location_venue_button"
  post "highest_capacity_button", to: "venues#highest_capacity_button", as: "highest_capacity_button"
  post "lowest_capacity_button", to: "venues#lowest_capacity_button", as: "lowest_capacity_button"


  post "alphabetized_artist_button", to: "artists#alphabetized_artist_button", as: "alphabetized_artist_button"
  post "most_popular_artist_button", to: "artists#most_popular_artist_button", as: "most_popular_artist_button"
  post "least_popular_artist_button", to: "artists#least_popular_artist_button", as: "least_popular_artist_button"
  post "by_genre_artist_button", to: "artists#by_genre_artist_button", as: "by_genre_artist_button"

  post "by_venue_concert_button", to: "concerts#by_venue_concert_button", as: "by_venue_concert_button"
  post "by_popular_venue_concert_button", to: "concerts#by_popular_venue_concert_button", as: "by_popular_venue_concert_button"
  post "by_artist_concert_button", to: "concerts#by_artist_concert_button", as: "by_artist_concert_button"
  post "by_popular_artist_concert_button", to: "concerts#by_popular_artist_concert_button", as: "by_popular_artist_concert_button"
  post "by_closest_date_concert_button", to: "concerts#by_closest_date_concert_button", as: "by_closest_date_concert_button"
  post "by_furthest_date_concert_button", to: "concerts#by_furthest_date_concert_button", as: "by_furthest_date_concert_button"
  post "by_twenty_one_and_up_concert_button", to: "concerts#by_twenty_one_and_up_concert_button", as: "by_twenty_one_and_up_concert_button"
  post "by_under_twenty_one_concert_button", to: "concerts#by_under_twenty_one_concert_button", as: "by_under_twenty_one_concert_button"
  post "by_location_concert_button", to: "concerts#by_location_concert_button", as: "by_location_concert_button"
  post "by_genre_concert_button", to: "concerts#by_genre_concert_button", as: "by_genre_concert_button"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
