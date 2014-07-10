require 'bundler'
Bundler.require

require './sailor'
require './submarine'
require 'pry'

sailors = proto.map{ |name| Sailor.new(name) }
proto_sub = Submarine.new
sailors.each{|sailor| proto_sub.accept_sailor(sailor)}

proto_proto_sub = Submarine.new
proto.each do |name|
  sailor = Sailor.new(name)
  proto_proto_sub.accept_sailor(sailor)
end

get '/sailors' do
  @sailors = proto_sub.sailors
  erb :index
end
