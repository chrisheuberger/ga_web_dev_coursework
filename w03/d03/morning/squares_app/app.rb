require 'bundler'
Bundler.require

get '/' do
  @num_squares = 1
  erb :index
end

get '/:num_squares' do
  @num_squares = params[:num_squares].to_i
  erb :index
end
