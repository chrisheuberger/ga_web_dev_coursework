require 'bundler'
Bundler.require

require './lib/movie'
require './lib/omdb'

get '/' do
  erb :root
end

get '/movie' do
  @movie = OMDB.find(params[:movie_name])
  erb :show
end


get '/movies' do
  f = File.open("movies.csv", "r")
  arr = f.readlines
  arr.map! do |line|
    data = line.split(', ')
    {"Title"  => data[0],
     "Poster" => data[1],
     "Plot"   => data[2]
    }
 end
 @movies = arr.map{|hash| Movie.new(hash)}
 erb :index
end