Rails.application.routes.draw do
  root "welcome#index"
  resources :people
end
