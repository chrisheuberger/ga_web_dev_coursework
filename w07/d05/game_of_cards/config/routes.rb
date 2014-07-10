Rails.application.routes.draw do
  root 'cards#index'
  get 'cards' => 'cards#index'
end
