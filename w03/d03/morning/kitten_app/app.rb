require 'bundler'
Bundler.require

require './models/kitten'

get '/' do
  redirect '/1'
end

get '/:num_kittens' do
  @num_kittens = params[:num_kittens].to_i
  @kittens = num_kittens.times.map{ Kitten.new }
  erb :index
end
