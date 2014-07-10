require 'Bundler/setup'
Bundler.require

def rand_char
  (('A'..'F').to_a + (0..9).to_a).sample
end

def rand_hex_color
  6.times.map{rand_char}.join
end

compliments  = [
    'You look great.',
    'You don\'t need to take showers. You smell fantastic.',
    'The universe is rooting for you.'
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
