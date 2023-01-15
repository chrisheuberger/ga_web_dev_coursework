require 'bundler'
Bundler.require

require_relative 'models/book'

get '/' do
  redirect '/books'
end


# index
get '/books' do
  @books = Book.all
  erb :index
end


# new
get '/books/new' do
  erb :new
end

# create
post '/books' do
  title = params['book_title']
  author = params['book_author']
  new_book = Book.create({'title'=> title, 'author'=>author})
  redirect "/books/#{ new_book.id }"
end


# edit
get '/books/:id/edit' do
  id = params[:id]
  @book = Book.find(id)
  erb :edit
end


# update
post '/books/:id' do
  id = params[:id]
  book = Book.find(id)
  book.title = params['book_title']
  book.author = params['book_author']
  book.save
  redirect "/books/#{ book.id }"
end

# show
get '/books/:id' do
  @book = Book.find(params[:id])
  erb :show
end
