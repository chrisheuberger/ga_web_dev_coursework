Rails.application.routes.draw do

  get 'users/new' => "users#new"
  post 'users' => "users#create"
  get 'users' => "users#index"
  root "users#index"


  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'


  get 'sessions/aldric' => 'sessions#destroy'

  delete 'sessions' => 'sessions#destroy', as: 'log_out'

  get 'profiles' => 'profiles#index'

end
