class ParseData
  DIR = "parse_data"
  attr_reader :book_name
  def initialize(book_name)
    @book_name = book_name
  end

  def exists?
    file_path = File.join(DIR, book_name)
    File.exists?(file_path)
  end

  def read
    file_path = File.join(DIR, book_name)
    File.readlines(file_path).map { |line| line.split(": ") }
  end

  def write(word_counts)
    file_path = File.join(DIR, book_name)
    File.open(file_path, 'w') do |f|
      word_counts.each do |word, count|
        f << "#{word}: #{count}\n"
      end
    end
  end
end
