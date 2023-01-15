Rails.application.routes.draw do
  resources :houses do
    resources :students, only: [:index, :create, :new, :show]
  end
end
