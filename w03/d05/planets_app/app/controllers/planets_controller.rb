class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def new
  end

  def create
    new_planet = Planet.create( params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life) )
    redirect_to "/planets/#{new_planet.id}"
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    edited_planet = Planet.find(params[:id])
    new_planet = Planet.create( params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life) )
    redirect_to "/planets/#{edited_planet.id}"
  end

  def destroy
    Planet.delete(params[:id])
    redirect_to '/planets'
  end
end
