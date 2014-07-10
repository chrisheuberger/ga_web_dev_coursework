require 'bundler'
Bundler.require
require 'sinatra'
require 'sinatra/reloader'
require 'omniauth'

get '/' do
  erb :index
  redirect 'https://api.instagram.com/oauth/authorize/?client_id=24e81497c02f48e7a1c605a48a8851f3&redirect_uri=http://localhost:4567/callback&response_type=code'
end

get '/callback' do
  erb :callback
end

use Rack::Session::Cookie,
  :secret => 'xxx'

# use OmniAuth::Builder do
#   provider :twitter, ENV.fetch('TWITTER_KEY'), ENV.fetch('TWITTER_SECRET')
#   provider :instagram, ENV.fetch('INSTAGRAM_ID'), ENV.fetch('INSTAGRAM_SECRET')
# end

get '/assets/css/:name.scss' do |name|
  content_type :css
  scss "scss/#{name}".to_sym, layout: false
end

%w[get post].each do |method|
  send(method, "/auth/:provider/callback") do
    "<h1>" + method + "</h1>" + env['omniauth.auth'].map do |key, value|
      "<p>" + key + " => " + value.inspect + "</p>"
    end.join
  end
end
