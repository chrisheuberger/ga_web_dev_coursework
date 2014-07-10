require 'bundler'
Bundler.require

require './models/dog'
require './config'

get '/' do
  redirect '/dogs'
end

get '/dogs' do
  @dogs = Dog.all
  erb :index
end

get '/dogs/new' do
  erb :new
end

post '/dogs' do
  dog = Dog.create(name: params['name'])
  dog.save
  redirect "/dogs/#{ dog.id }"
end

get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb :show
end

get '/dogs/:id/edit' do
  @dog = Dog.find(params[:id])
  erb :edit
end

put '/dogs/:id' do
  dog = Dog.find(params[:id])
  dog.name = params[:name]
  dog.save
  redirect "/dogs/#{ dog.id }"
end

delete '/dogs/:id' do
  Dog.delete(params[:id])
  redirect '/dogs'
end
