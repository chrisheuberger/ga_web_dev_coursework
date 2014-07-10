require 'pry'
require 'httparty'

def html_tags(html)
  html.scan(/<\w+/).flatten.uniq
end

def find_tags(url)
  html = HTTParty.get(url)
  html_tags(html)
end

binding.pry
