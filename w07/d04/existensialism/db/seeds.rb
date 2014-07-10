require 'nokogiri'
require 'open-uri'

offset = 0

10.times do
  doc = Nokogiri::HTML(open("http://www.existential-therapy.com/existential_quotes.html"))
  quote_data = doc.css('p')
  quote_data = quote_data[1..134]
  quote_data.each do |quote|
    data = quote.text
    quote, attribution = data.split(/\n/)
    Quote.create(text: quote, attribution: attribution)
  end
  offset += 100
end
