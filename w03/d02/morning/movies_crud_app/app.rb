require 'bundler'
Bundler.require

require_relative 'models/movie'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'movies_app'
  )

# root
get '/' do
  redirect '/movies'
end

# index
get '/movies' do
  @movies = Movie.all
  erb :index
end

# new
get '/movies/new' do
  erb :new
end

# create
post '/movies' do
  title = params['movie_title']
  director = params['movie_director']
  screenwriter = params['movie_screenwriter']
  Movie.create({:title => title, :director => director, :screenwriter => screenwriter})
  redirect '/movies'
end

# show
get '/movies/:id' do
  @movie = Movie.find(params[:id])
  erb :show
end

# edit
get '/movies/:id/edit' do
  @movie = Movie.find(params[:id])
  erb :edit
end

# update
put '/movies/:id' do
  movie = Movie.find(params[:id])
  movie.title = params['movie_title']
  movie.director = params['movie_director']
  movie.screenwriter = params['movie_screenwriter']
  movie.save
  redirect "/movies/#{movie.id}"
end

# delete
delete '/movies/:id' do
  Movie.delete(params[:id])
  redirect '/movies'
end
