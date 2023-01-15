require 'sinatra'
require 'sinatra/reloader'


get '/' do
  erb :games
end

get '/toss' do
  @result = ['Heads', 'Tails'].sample
  erb :toss
end

get '/dice_roll' do
  @result = rand(6)+1
  erb :dice_roll
end
