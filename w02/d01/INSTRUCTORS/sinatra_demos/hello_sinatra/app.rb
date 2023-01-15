require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
  word = ['happy', 'sad', 'joyous'].sample
  "Hello WDI-Proto.  You seem #{word}"
end

get '/be_nice' do
  "you are sooooo cool"
end

# Sinatra::Base.send :get, ("/") do
#   "hello, wdi"
# end
