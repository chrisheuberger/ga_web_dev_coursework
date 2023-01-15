# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://www.existential-therapy.com/existential_quotes.html"))
quote_data = doc.css('p')
quote_data = quote_data[1..134]
quote_data.each do |quote|
  data = quote.text
  quote, attribution = data.split(/\n/)
  Quote.create(text: quote, attribution: attribution)
end
