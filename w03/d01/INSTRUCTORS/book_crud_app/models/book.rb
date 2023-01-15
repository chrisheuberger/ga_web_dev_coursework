class Book

  attr_accessor :title, :author
  attr_reader :id

  def initialize(options)
    @id = options.fetch('id')
    @title = options.fetch('title')
    @author = options.fetch('author')
  end

  def to_s
    "#{@title} by #{@author}"
  end


  def save
    sql_statement = "UPDATE books SET title='#{@title}', author='#{@author}' WHERE id=#{@id};"
    run_sql(sql_statement)
  end

  def run_sql(sql_statement)
    Book.run_sql(sql_statement)
  end

  def self.all
    response = run_sql('SELECT * FROM books;')
    books = response.map do |book_row_hash|
      Book.new(book_row_hash)
    end
    books
  end

  #  Book.find(2)
  def self.find(id_to_find)
    sql_statement ="SELECT * FROM books WHERE id=#{id_to_find};"
    response = run_sql(sql_statement)
    Book.new(response.first)
  end


  def self.create(book_hash)
    title = book_hash['title']
    author = book_hash['author']
    sql_statement = "INSERT INTO books (title, author) VALUES ('#{title}', '#{author}') RETURNING *;"
    response = run_sql(sql_statement)
    Book.new(response.first)
  end

  def self.run_sql(sql_statement)
    connection = PG.connect(:dbname => 'book_app')
    response = connection.exec(sql_statement)
    connection.close
    return response
  end

end

