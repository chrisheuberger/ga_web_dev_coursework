require 'bundler'
Bundler.require

require 'pry'
require './lib/musicbrainz'
require './lib/artist'

get '/'  do
  erb :index
end

get '/artist' do
  # we will have  a params hash that looks like this:
  # {artist_name: "prince"}
  erb :show
end

post '/artist' do
  artist_name = params[:artist_name]
  redirect to "/artist?artist_name=#{artist_name}"
end
