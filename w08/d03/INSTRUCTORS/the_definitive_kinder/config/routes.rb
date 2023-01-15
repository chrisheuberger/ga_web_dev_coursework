Rails.application.routes.draw do
  root to: 'kittens#index'
  get  '/kittens' => 'kittens#index'
  post '/kittens' => 'kittens#create'
end