Rails.application.routes.draw do
  root to: 'palettes#index'
  get 'palettes' => 'palettes#index'
end