class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def create
    dog = Dog.create(dog_params)
    redirect_to dog_path(dog)
  end

  def update
    dog = Dog.find(params[:id])
    dog.update(dog_params)
    redirect_to dog_path(dog)
  end

  def new
  end

  def destroy
    dog = Dog.delete(params[:id])
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed)
  end
end
