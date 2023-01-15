require 'bundler/setup'
Bundler.require


get '/' do
  erb :index
end

post '/names' do
  person_name = params[:user_name].gsub(' ', '%20')

  # Performed an action!!!!!

  # redirect '/names?being_name=' + person_name
  redirect "/names?being_name=#{person_name}"
end

get '/names' do
  @name = params[:being_name]
  erb :show
end
