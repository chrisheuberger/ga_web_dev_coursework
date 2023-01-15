require 'bundler'
Bundler.require

# require './models/kitten'
require_relative 'models/kitten'


get '/:num_kittens' do
  num_kittens = params[:num_kittens].to_i
  @kittens = num_kittens.times.map{ Kitten.new }
  erb :index
end
