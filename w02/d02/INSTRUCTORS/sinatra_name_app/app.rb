require 'bundler/setup'
Bundler.require

get '/' do
  @name = Faker::Name.name
  erb :index
end

get '/name_list/:num_names' do
  @names = []
  num_names = params[:num_names].to_i
  num_names.times { @names << Faker::Name.name }
  erb :names_list
end
