require_relative 'book'
require_relative 'parse_data'

class BookParser

  def self.setup
    [Book::DIR, ParseData::DIR].each do |directory|
      next if File.directory?(directory)
      Dir.mkdir(directory)
    end
  end

  def initialize book_name
    @book = Book.new book_name
    @parser = ParseData.new book_name
  end

  def word_counts
    if parse_data_exists?
      counts = read_parse_data
    else
      counts = count_words
      write_parse_data(counts)
    end
    counts
  end

  def parse_data_exists?
    @parser.exists?
  end

  def read_parse_data
    @parser.read
  end

  def write_parse_data(word_counts)
    @parser.write(word_counts)
  end

  def count_words
    word_counts = Hash.new { |hash, key| hash[key] = 0 }
    @book.words.each do |word|
      word_counts[word] += 1
    end
    word_counts
  end


end
