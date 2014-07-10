# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader'
require 'faker'

proto = [
  'Jeff Winkler',
  'John Murphy',
  'Nessa Nguyen',
  'Jeff Drakos',
  'Rebecca Strong',
  'Gardner Lonsberry',
  'Jonathan Gean',
  'Nathaniel Tuvera',
  'Tim Hannes','Aziz Hasanov',
  'Chris Heuberger',
  'Dmitry Shamis',
  'Corey Leveen',
  'Paul Hiam',
  'Steven Doran',
  'Ben Karl',
  'Kristen Tonga',
  'Wake Lankard',
  'Carlos Pichardo',
  'Paul Gasberra',
  'Andrea Trapp',
  'Adam Schneider',
  'Heidi Williams-Foy'
]

proto_hash = {}

proto_first_last = proto.map do |dev|
  dev.split(' ')
end

proto_first_last.each do |dev|
  first = dev[0]
  last = dev[1]
  initials = (first[0] + last[0]).downcase.to_sym
  proto_hash[initials] = [first, last]
end

class Developer
  attr_reader :initials :name :tagline
  def initialize(initials, name, tagline)
    @initials = initials
    @name     = name
    @tagline  = tagline
  end

  def to_s
    "Hi, I am #{@name}. #{@tagline}"
  end
end

developers = []

proto_hash.each do |initials, name|
  tagline = Faker::Company.catch_phrase
  developers << Developer.new (initials, name, tagline)
end

get '/' do
  redirect '/developers'
end

get '/developers' do
  @developers = developers.sort{|x,y| x.initials.to_s <=> y.initials.to_s }
  erb :index
end
