require 'bundler/setup'
Bundler.require

use Rack::Session::Cookie,
:secret => '6e40b7add2e54c0bb8a231f2434e4175'

use OmniAuth::Strategies::Developer

use OmniAuth::Builder do
  provider :instagram, "4382d4cc257b4c1e941f747cebdf5987", "6e40b7add2e54c0bb8a231f2434e4175"
end

get '/' do
  erb :index
end

get '/auth/instagram/callback' do
  "instagram callback"
end
