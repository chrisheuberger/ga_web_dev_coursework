require 'bundler/setup'
Bundler.require

use Rack::Session::Cookie,
:secret => 'VOHfNaZ35PPadeGmuGVQgkKCwrn4aMWZ1X07PU1rThuHMwpfi3'

use OmniAuth::Strategies::Developer

use OmniAuth::Builder do
  provider :twitter, "plLjorvwWKbCe8c3Vw1IfC27j", "VOHfNaZ35PPadeGmuGVQgkKCwrn4aMWZ1X07PU1rThuHMwpfi3"
end

get '/' do
  erb :index
end

get '/auth/twitter/callback' do
  # tweets = HTTParty.get('https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=diiimmmaaa')
  # binding.pry
  "Wu-Tang Financial"
end
