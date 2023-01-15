KittensIntroApp::Application.routes.draw do
# get '/' => 'kittens#index'
# get '/', to: 'kittens#index'
# root to 'kittens#index'
  root 'kittens#index'
  get '/kittens' => 'kittens#index'
end
