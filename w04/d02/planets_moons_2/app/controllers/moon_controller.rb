class MoonController < ApplicationController

def create
  new_moon = Moon.create(moon_params)
  moon_planet = Planet.find(params[:planet_id])
  moon_planet.moons << new_moon
  redirect_to "/planets/#{new_moon.planet_id}"
end

def new
  @planet = Planet.find(params[:planet_id])
end

def edit
  @moon = Moon.find(params[:id])
end

def update
     edited_moon = Moon.find(params[:id])
     edited_moon.update(moon_params)
     redirect_to "/planets/#{edited_moon.planet_id}"
end

def destroy
  Moon.delete(params[:id])
  planet = Planet.find(params[:planet_id])
  redirect_to "/planets/#{planet.id}"
end

private
def moon_params
  params.require(:moon).permit(:name, :planet_id)
end

end
