Rails.application.routes.draw do
  root to: 'cards#index'
  get 'cards' => 'cards#index'
end