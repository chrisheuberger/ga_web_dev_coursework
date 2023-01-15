Rails.application.routes.draw do
  get '/' => 'squares#index'
  # root: 'squares#inxex'
  get '/squares' => 'squares#index'
  get '/squares/new' => 'squares#new'
  post '/squares' => 'squares#create'
  get '/squares/:id' => 'squares#show'
  get '/squares/:id/edit' => 'squares#edit'
  put '/squares/:id' => 'squares#update'
  delete '/squares/:id' => 'squares#destroy'

end