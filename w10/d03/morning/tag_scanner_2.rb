require 'httparty'

def html_tags(str)
  return (str).scan(/(?<=<)\w+/).uniq
end

str = "<div class='three columns offset-by-two'><br/><div></div><ul id='contacts-links-documents'>"
puts html_tags(str)

all_html = HTTParty.get('http://www.google.com/')
all_html = HTTParty.get('http://www.nytimes.com/')

_3puts html_tags(all_html)
