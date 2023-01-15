require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :map
end

get '/location/:local' do
  @local = params[:local]
  @found_item = ['gold', 'magic spells', 'soup'].sample
  erb :location
end
