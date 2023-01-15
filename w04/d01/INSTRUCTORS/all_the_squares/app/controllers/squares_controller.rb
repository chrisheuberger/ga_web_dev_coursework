class SquaresController < ApplicationController
  # get '/squares' => 'squares#index'
  def index
    @squares = Square.all
  end

  # get '/squares/new' => 'squares#new'
  def new

  end
  # post '/squares' => 'squares#create'
  def create
    square = Square.create(square_params)
    redirect_to "/squares/#{square.id}"
  end

  # get '/squares/:id' => 'squares#show'
  def show
    @square = Square.find(params[:id])
  end

  # get '/squares/:id/edit' => 'squares#edit'
  def edit
    @square = Square.find(params[:id])
  end

  # put '/squares/:id' => 'squares#update'
  def update
    square = Square.find(params[:id])
    square.update(square_params)
    redirect_to "/squares/#{square.id}"
  end

  # delete '/squares/:id' => 'squares#destroy'
  def destroy
    Square.delete(params[:id])
    redirect_to '/squares'
  end

  private

  def square_params
    params.require(:square).permit(:side_length, :border_radius, :color)
  end











end