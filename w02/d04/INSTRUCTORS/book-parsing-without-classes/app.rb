require 'bundler/setup'
Bundler.require

# NOTES
# Now the "books" and the "parse_data" directory are part
# of the domain knowledge, so they should be extracted,

BOOK_DIR = "books"
PARSE_DATA_DIR = "parse_data"

[BOOK_DIR, PARSE_DATA_DIR].each do |directory|
  next if File.directory?(directory)
  Dir.mkdir(directory)
end

get '/' do
  erb :root
end

get '/books/:name' do
  @name = params[:name]
  @word_counts = sort_counts(@name)
  erb :show
end

def sort_counts(book_name)
  word_counts(book_name).sort_by { |word, counts| -word.length }
end

def word_counts(book_name)
  if parsed_file_exists?(book_name)
    word_counts = read_parse_data(book_name)
  else
    word_counts = count_words(book_name)
    store_word_counts(book_name, word_counts)
  end
  word_counts
end

def count_words(book_name)
  word_counts = Hash.new { |hash, key| hash[key] = 0 }
  words(book_name).each do |word|
    word_counts[word] += 1
  end
  word_counts
end

def words(book_name)
  book_text(book_name).split(' ').map { |word| word.downcase }
end

def book_text(book_name)
  book_path = File.join(BOOK_DIR, book_name)
  f = File.open(book_path, 'r')
  text = f.read
  f.close
  text
end

def store_word_counts(book_name, word_counts)
  file_path = File.join(PARSE_DATA_DIR, book_name)
  File.open(file_path, 'w') do |f|
    word_counts.each do |word, count|
      f << "#{word}: #{count}\n"
    end
  end
end

def parsed_file_exists?(book_name)
  file_path = File.join(PARSE_DATA_DIR, book_name)
  return File.exists?(file_path)
end

def read_parse_data(book_name)
  file_path = File.join(PARSE_DATA_DIR, book_name)
  File.readlines(file_path).map { |line| line.split(": ") }
end
