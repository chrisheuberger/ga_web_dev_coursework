Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#log'
end
