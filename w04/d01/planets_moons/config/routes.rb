Rails.application.routes.draw do
  resources :planets do
    resources :moons, except: [:show, :index]
  end
end
