require 'HTTParty'
require 'pry'

response = HTTParty.get('http://www.nytimes.com/interactive/magazine/masthead.html');

response.scan(/:.*@.*com/)
