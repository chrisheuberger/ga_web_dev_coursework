require 'spec_helper'

describe Movie do
  it 'returns an array of movies' do
    movies = Movie.search('The Matrix')
    expect(movies.length).to eq 10
  end

  it 'returns a single movie' do
    movie = Movie.find 'The Matrix', 1999
    expect(movie.title).to eq 'The Matrix'
    actors = movie.actors.split(', ')
    expect(actors).to include('Keanu Reeves')
  end
end
