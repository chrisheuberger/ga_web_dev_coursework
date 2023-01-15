# gem install instagram

require 'instagram'

Instagram.configure do |config|
  config.client_id = ENV['INSTAGRAM_CLIENT_ID']
  config.client_id = ENV['INSTAGRAM_SECRET']
end

pictures = client.media_search(45, 24)

# To make ENV work on heroku..
#  heroku config:set  INSTAGRAM_CLIENT_ID=YOURKEYHERE
#  heroku config:set  INSTAGRAM_SECRET=YOURSECRETHERE

