Rails.application.routes.draw do
  get '/', :action => "index", :controller => "kittens"
  get '/kittens', :action => "index", :controller => "kittens"
end
