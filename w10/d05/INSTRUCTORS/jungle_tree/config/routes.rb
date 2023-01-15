Rails.application.routes.draw do
  resources :monkeys, except: [:new, :edit]
end
