Rails.application.routes.draw do

  get '/authors' => 'authors#index'
  get '/authors/:author_id/books' => 'books#index'

end
