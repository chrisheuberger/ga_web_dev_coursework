Rails.application.routes.draw do

  root 'kittens#index'
  get '/kittens/random' => 'kittens#index'
  resources :kittens, only: [:index, :create]

end
