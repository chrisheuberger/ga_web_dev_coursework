require_relative './parse_data'

class Book
  DIR = "books"
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def words
    text.split(' ').map { |word| word.downcase }
  end

  def text
    book_path = File.join(DIR, name)
    File.read(book_path).delete(',.:!;?[]')
  end
end
