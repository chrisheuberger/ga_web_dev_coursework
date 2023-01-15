require 'bundler'
Bundler.require

get '/' do
  redirect '/lunches'
end

get '/lunches' do

  erb :lunches

end
