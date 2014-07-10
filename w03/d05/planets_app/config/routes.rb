Rails.application.routes.draw do
  root 'planets#index'
  get 'planets' => 'planets#index'
  get 'planets/new' => 'planets#new'
  post 'planets' => 'planets#create'
  get 'planets/:id' => 'planets#show'
  get 'planets/:id/edit' => 'planets#edit'
  put 'planets/:id' => 'planets#update'
  delete 'planets/:id' => 'planets#destroy'
end
