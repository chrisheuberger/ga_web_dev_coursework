Rails.application.routes.draw do

  get '/auth/:provider/callback', to: 'session#log'

end
