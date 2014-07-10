Rails.application.routes.draw do
  resources :people, only: [:index, :create]
  root to: 'people#index'
end
