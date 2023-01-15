require 'bundler'
Bundler.require

require_relative 'models/friend'
require_relative './config'


# index
get '/friends' do
  @friends = Friend.all
  erb :index
end

# new
get '/friends/new' do
  erb :new
end

# create
post '/friends' do
  friend = Friend.create(username: params['username'])
  friend.update_image
  friend.save
  redirect "/friends/#{ friend.id }"
end


# show
get '/friends/:id' do
  @friend = Friend.find(params[:id])
  erb :show
end

# edit

get '/friends/:id/edit' do
  @friend = Friend.find(params[:id])
  erb :edit
end


put '/friends/:id' do
  friend = Friend.find(params[:id])
  friend.username = params[:username]
  friend.update_image
  friend.save
  redirect "/friends/#{ friend.id }"
end

delete '/friends/:id' do
  Friend.delete(params[:id])
  redirect '/friends'
end




















