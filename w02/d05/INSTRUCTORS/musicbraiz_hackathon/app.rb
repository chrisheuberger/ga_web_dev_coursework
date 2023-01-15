require 'bundler'
Bundler.require

module Musicbranz
  def self.find(artist_name)

    artist_name = artist_name.gsub(' ', '%20')
    url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
    response = HTTParty.get(url)

    response['metadata']['artist_list']['artist']
  end
end

artists = Musicbranz.find('bjork')
