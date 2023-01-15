Rails.application.routes.draw do
  root 'movies#index'
  resources :movies, only: [:index]
  get '/movies/search', to: 'movies#search'
  get '/movies/:year/:title', to: 'movies#show'
end
