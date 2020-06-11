Rails.application.routes.draw do

  resources :artist_instruments #, only: [:new]
  resources :artists
  resources :instruments
end
