class PlanetsController < ApplicationController

def index
@planets = Planet.all
end

def create
  new_planet = Planet.create(planet_params)
  redirect_to "/planets/#{new_planet.id}"
end

def new
end

def edit
    @planet = Planet.find(params[:id])

end

def show
    @planet = Planet.find(params[:id])

end

def update
  edited_planet = Planet.find(params[:id])
     edited_planet.update(planet_params)
     redirect_to "/planets/#{edited_planet.id}"
end

def destroy
  Planet.delete(params[:id])
    redirect_to '/planets'
end

private

def planet_params
  params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
end

end
