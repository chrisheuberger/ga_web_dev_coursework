require 'bundler'
Bundler.require

require_relative 'models/lunch'

# root
get '/' do
  redirect '/lunches'
end

# index
get '/lunches' do
  @lunches = Lunch.all
  erb :index
end

# new
get '/lunches/new' do
  erb :new
end

get 'lunches/random' do
  erb :random
end
