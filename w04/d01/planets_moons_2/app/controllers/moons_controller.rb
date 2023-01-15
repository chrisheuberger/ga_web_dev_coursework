class MoonsController < ApplicationController

def create
  new_moon = Moon.create(moon_params)
  redirect_to "/planets/#{planet.id}/moons"
end

def new
  @planet = Planet.find(params[:id])
end

def edit
end

def update
end

def destroy
end

private
def moon_params
  params.require(:planet).permit(:name)
end

end
