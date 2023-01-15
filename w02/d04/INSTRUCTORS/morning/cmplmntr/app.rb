require 'bundler'
Bundler.require

def rand_char
  (('A'..'F').to_a + (0..9).to_a).sample
end

def rand_hex_color
  6.times.map{rand_char}.join
end

compliments = [
    "You don't need to take showers.  It's more natural that way.",
    "You're not as short as you look.",
    "You're inspirational to some",
    "You can conceive a better compliment than Ben",
    "You are super Paleo!",
    "You lip sync like emma stone!"
  ]

get '/' do

  @compliment = compliments.sample
  @color      = rand_hex_color

  erb :compliment
end

post '/names' do
  name = params[:name].gsub(" ", "%20")
  redirect "/names?name=#{name}"
end

get '/names' do
  @name       = params[:name]
  @compliment = compliments.sample
  @color      = rand_hex_color

  erb :compliment
end




















