require 'bundler/setup'
Bundler.require

# NOTES
# Now the "books" and the "parse_data" directory are part
# of the domain knowledge, so they should be extracted,
# which gives us an idea for what objects we could create

require_relative 'book'
require_relative 'parse_data'
require_relative 'book_parser'

BookParser.setup

get '/' do
  erb :root
end

get '/books/:name' do
  @name = params[:name]
  book_parser = BookParser.new(@name)
  @word_counts = sort_counts(book_parser)
  erb :show
end

def sort_counts(book_parser)
  book_parser.word_counts.sort_by { |word, counts| -word.length }
end
