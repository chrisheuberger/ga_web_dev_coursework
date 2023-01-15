class Movie
  def self.search title
    Omdb::Api.new.search(title).fetch(:movies)
  end

  def self.find title, year
    Omdb::Api.new.fetch(title, year).fetch(:movie)
  end
end
