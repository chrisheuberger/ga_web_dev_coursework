require 'bundler/setup'
Bundler.require

require 'sinatra/reloader'

use Rack::Session::Cookie,
  :secret => '302804fhdjfhehnf2cy74yjt9ojx28r80m2xeoheaflinan47carh2'
# I typed this secret key myself by mashing the keyboard. Guaranteed to be random.

use OmniAuth::Builder do
  provider :twitter, ENV.fetch('TWITTER_KEY'), ENV.fetch('TWITTER_SECRET')
  provider :instagram, ENV.fetch('INSTAGRAM_ID'), ENV.fetch('INSTAGRAM_SECRET')
end

get '/assets/css/:name.scss' do |name|
  content_type :css
  scss "scss/#{name}".to_sym, layout: false
end

get '/' do
  erb :index
end

%w[get post].each do |method|
  send(method, "/auth/:provider/callback") do
    "<h1>" + method + "</h1>" + env['omniauth.auth'].map do |key, value|
      "<p>" + key + " => " + value.inspect + "</p>"
    end.join
  end
end
