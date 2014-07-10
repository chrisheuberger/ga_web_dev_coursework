class MoonsController < ApplicationController

  #     planet_moons POST   /planets/:planet_id/moons(.:format)          moons#create
  def create
    planet = Planet.find(params[:planet_id])
    moon = Moon.create(moon_params)
    planet.moons << moon
    redirect_to planet_path(planet)
  end

  #  new_planet_moon GET    /planets/:planet_id/moons/new(.:format)      moons#new
  def new
    @planet = Planet.find(params[:planet_id])
  end

  # edit_planet_moon GET    /planets/:planet_id/moons/:id/edit(.:format) moons#edit
  def edit
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id])
  end

  #      planet_moon PATCH  /planets/:planet_id/moons/:id(.:format)      moons#update
  #                  PUT    /planets/:planet_id/moons/:id(.:format)      moons#update
  def update
    planet = Planet.find(params[:planet_id])
    moon = Moon.find(params[:id])
    moon.update(moon_params)
    redirect_to planet_path(planet)
  end

  #                  DELETE /planets/:planet_id/moons/:id(.:format)      moons#destroy
  def destroy
    planet = Planet.find(params[:planet_id])
    Moon.delete(params[:id])
    redirect_to planets_path
  end

  private

  def moon_params
    params.require(:moon).permit(:name, :planet_id)
  end

end
