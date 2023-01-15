Rails.application.routes.draw do

  get '/login' => 'sessions#new', as: 'login'
  post '/sessions' => 'sessions#create', as: 'sessions'
  delete '/logout' => 'sessions#destroy', as: 'logout'

  get '/signup' => 'wizards#new', as: 'signup'
  post '/wizards' => 'wizards#create', as: 'wizards'

  get '/profile' => 'wizards#profile', as: 'profile'

  root 'welcome#index'

end
