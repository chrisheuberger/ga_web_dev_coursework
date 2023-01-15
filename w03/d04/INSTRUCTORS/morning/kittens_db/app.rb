require 'bundler'
Bundler.require

require './config.rb' # Runs the code that establishes our connection to the database.
require './models/kitten'

get '/kittens/random' do
  @kitten = Kitten.new({:width => rand(100..400), :height => rand(100..400)})
  erb :random
end

get '/kittens' do
  @kittens = Kitten.all
  erb :index
end

post '/kittens' do
  binding.pry
  Kitten.create(width: params[:width].to_i, height: params[:height].to_i)
  redirect '/kittens'
end