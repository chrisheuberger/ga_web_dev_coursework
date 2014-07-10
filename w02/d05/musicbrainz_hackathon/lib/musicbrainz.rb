module Musicbrainz
  def self.find(artist_name)
    artist_name = artist_name.gsub(' ', '%20')
    url = "http://musicbrainz.org/ws/2/artist?query=" + artist_name
    response = HTTParty.get(url)
    response['metadata']['artist_list']['artist'].each_with_index do |_, index|
      name = response['metadata']['artist_list']['artist'][index]['name']
      city = response['metadata']['artist_list']['artist'][index]['begin_area']['name']
      country = response['metadata']['artist_list']['artist'][index]['country']
      @artist_array << "#{name}: #{city}, #{country}"
    end
  end
end
