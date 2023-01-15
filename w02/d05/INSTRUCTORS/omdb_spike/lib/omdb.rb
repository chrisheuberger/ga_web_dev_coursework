module OMDB
  include HTTParty
  def self.find(movie)
    movie_name = movie.gsub(' ', '%20')
    movie_json = self.get("http://www.omdbapi.com/?t="+movie_name)
    movie_hash = JSON.parse(movie_json)
    movie = Movie.new(movie_hash)
    file  = File.open("movies.csv", "a+")
    file.puts movie
    file.close
    movie
  end
end

  # movie_name = params[:movie_name].gsub(" ", "%20")
  # movie = HTTParty.get("http://www.omdbapi.com/?t="+movie_name)
  # movie_hash = JSON.parse(movie)
  # @title        = movie_hash["Title"]
  # @plot         = movie_hash["Plot"]
  # @poster_url   = movie_hash["Poster"]