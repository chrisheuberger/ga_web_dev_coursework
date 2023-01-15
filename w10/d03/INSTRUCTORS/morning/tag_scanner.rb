require 'pry'
require 'httparty'

def html_tags(html)
  html.scan(/<(\w+)/).flatten.uniq
end

def html_tags_steve(html)
  html.scan(/(?<=<)\w+/).uniq
end

def find_tags(url)
  html = HTTParty.get(url)
  html_tags_steve(html)
end

binding.pry

