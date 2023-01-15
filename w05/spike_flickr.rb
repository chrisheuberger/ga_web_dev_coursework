# the gem
require 'flickraw'

# set up keys and secrets
FlickRaw.api_key=ENV.fetch('FLICKER_KEY')
FlickRaw.shared_secret=ENV.fetch('FLICKER_SECRET')

# find lat and long
location = "new york"
place = flickr.places.find :query => location
latitude = place[0]['latitude'].to_f
longitude = place[0]['longitude'].to_f

# within 60 miles of new brunswick, let's use a bbox
radius = 1
args = {}
args[:bbox] = "#{longitude - radius},#{latitude - radius},#{longitude + radius},#{latitude + radius}"

# requires a limiting factor, so let's give it one
args[:min_taken_date] = '1990-01-01 00:00:00'
args[:max_taken_date] = '2014-01-01 00:00:00'
args[:accuracy] = 1 # the default is street only granularity [16], which most images aren't...
discovered_pictures = flickr.photos.search args

image_urls = discovered_pictures.map{|p| url = FlickRaw.url(p)}
