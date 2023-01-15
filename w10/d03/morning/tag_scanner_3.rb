require 'pry'
require 'httparty'

def html_tags(html_string)
  html_string.scan(/<(\w+)/).flatten.uniq
end

def unique_tags(url)
  html_tags(HTTParty.get(url))
end

binding.pry
unique_tags('http://www.google.com')
unique_tags('http://www.nytimes.com')
