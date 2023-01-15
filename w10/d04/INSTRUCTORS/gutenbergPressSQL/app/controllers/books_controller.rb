class BooksController < ApplicationController
  def index
    books = Author.find(params[:author_id]).books
    render json: books.to_json
  end
end
