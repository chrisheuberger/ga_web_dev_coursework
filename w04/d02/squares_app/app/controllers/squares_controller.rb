class SquaresController < ApplicationController

# root GET            /                             squares#index
# squares GET         /squares(.:format)            squares#index
def index
  @squares = Square.all
  # displays a list of all squares
end

# squares_new GET     /squares/new(.:format)        squares#new
def new
  @square = Square.new
  # this will have a form
end

# POST                /squares(.:format)            squares#create
def create
  new_square = Square.create( params.require(:square).permit(:side_length, :border_radius, :color) )
  redirect_to square_path(square)
  # creates a new square
end

#  GET                /squares/:id(.:format)         squares#show
def show
  @square = Square.find(params[:id])
  # display a specific square
end

# GET                 /squares/:id/edit(.:format)    squares#edit
def edit
  @square = Square.find(params[:id])
  # this will have a form
end

# PUT                 /squares/:id(.:format)         squares#update
def update
  edited_square = Square.find(params[:id])
  new_square = Square.create( params.require(:square).permit(:side_length, :border_radius, :color) )
  redirect_to square_path(square)
  # updates a specific square
end

# DELETE              /squares/:id(.:format)         squares#destroy
def destroy
  Square.delete(params[:id])
  redirect_to squares_path
  # deletes a specific square
end

end
