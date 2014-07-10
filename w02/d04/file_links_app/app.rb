require 'Bundler/setup'
Bundler.require

def links
  f = File.open('links.csv', 'r')
  links = f.readlines
end

get '/links' do
  @links = links.split(', ')
  links.map!{ |element| element.gsub("\n","")}
  erb :root
end


