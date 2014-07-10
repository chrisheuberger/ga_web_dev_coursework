class PlanetsController < ApplicationController

  #     planets GET    /planets(.:format)                          planets#index
  def index
    @planets = Planet.all
  end

  #             POST   /planets(.:format)                          planets#create
  def create
    planet = Planet.create(planet_params)
    redirect_to planet_path(planet)
  end

  #  new_planet GET    /planets/new(.:format)                      planets#new
  def new
  end

  # edit_planet GET    /planets/:id/edit(.:format)                 planets#edit
  def edit
    @planet = Planet.find(params[:id])
  end

  #      planet GET    /planets/:id(.:format)                      planets#show
  def show
    @planet = Planet.find(params[:id])
  end

  #             PATCH  /planets/:id(.:format)                      planets#update
  #             PUT    /planets/:id(.:format)                      planets#update
  def update
    planet = Planet.find(params[:id])
    planet.update(planet_params)
    redirect_to planet_path(planet)
  end

  #             DELETE /planets/:id(.:format)                      planets#destroy
  def destroy
    Planet.delete(params[:id])
    redirect_to planets_path
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
  end

end
