require './submarine'
require './sailor'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'


proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]

sailors = proto.map{ |name| Sailor.new(name) }
proto_sub = Submarine.new
sailors.each{|sailor| proto_sub.accept_sailor(sailor)}


proto_proto_sub = Submarine.new
proto.each do |name|
  sailor = Sailor.new(name)
  proto_proto_sub.accept_sailor(sailor)
end

wake_sub = Submarine.new
#accept sailor appends a new sialor object to the array which is assigned to an instance variable in our submarine class
proto.each{|name| wake_sub.accept_sailor(Sailor.new(name))}


get '/sailors' do

  @sailors = wake_sub.sailors
  erb :index
end