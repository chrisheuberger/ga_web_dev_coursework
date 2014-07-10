class Artist
  attr_reader :artist, :name, :id, :country, :discography
  def initialize(options)
    @artist         = MusicBrainz::Artist.search(params[:artist_name])
    @name           = MusicBrainz::Artist.find_by_name(params[:artist_name]).inspect
    @id             = MusicBrainz::Artist.find(params[:artist_name]).inspect
    @discography    = options.fetch("Discography", "undefined")
  end
end
