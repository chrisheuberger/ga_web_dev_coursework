Rails.application.routes.draw do
  root 'users#index'
  get 'users' => 'users#index'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  put 'users/:id' => 'users#update'
  get 'users/:id' => 'users#show'
  delete 'users/:id' => 'users#destroy'
end
