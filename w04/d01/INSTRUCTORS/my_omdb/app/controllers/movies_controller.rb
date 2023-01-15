class MoviesController < ApplicationController
  def index
  end

  def search
    @movies = Movie.search params.fetch(:title)
    @movies.sort_by! { |movie| movie.title }
  end

  def show
    @movie = Movie.find params.fetch(:title), params.fetch(:year)
  end

end
