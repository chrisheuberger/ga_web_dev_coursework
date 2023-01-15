Rails.application.routes.draw do
  root 'students#index'
  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show'
end
