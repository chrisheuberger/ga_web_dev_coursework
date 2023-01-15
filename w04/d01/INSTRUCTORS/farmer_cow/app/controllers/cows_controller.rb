class CowsController < ApplicationController

#     farmer_cows GET    /farmers/:farmer_id/cows(.:format)          cows#index
#                 POST   /farmers/:farmer_id/cows(.:format)          cows#create
#  new_farmer_cow GET    /farmers/:farmer_id/cows/new(.:format)      cows#new
# edit_farmer_cow GET    /farmers/:farmer_id/cows/:id/edit(.:format) cows#edit
#      farmer_cow GET    /farmers/:farmer_id/cows/:id(.:format)      cows#show
#                 PATCH  /farmers/:farmer_id/cows/:id(.:format)      cows#update
#                 PUT    /farmers/:farmer_id/cows/:id(.:format)      cows#update
#                 DELETE /farmers/:farmer_id/cows/:id(.:format)      cows#destroy


    def index
      @cows = Cow.all
    end

    def create
      farmer = Farmer.find(params[:farmer_id])
      cow = Cow.create(cow_params)
      farmer.cows << cow
      redirect_to "/farmers/#{farmer.id}/cows/#{cow.id}"
    end

    def new
      @farmer = Farmer.find(params[:farmer_id])
    end

    def edit
      @farmer = Farmer.find(params[:farmer_id])
      @cow = Cow.find(params[:id])
    end

    def show
      @cow = Cow.find(params[:id])
    end

    def update
      farmer = Farmer.find(params[:farmer_id])
      cow = Cow.find(params[:id])
      cow.update(cow_params)
      redirect_to "/farmers/#{farmer.id}/cows/#{cow.id}"
    end

    def destroy
      farmer = Farmer.find(params[:farmer_id])
      Cow.delete(params[:id])
      redirect_to "/farmers/#{farmer.id}/cows"
    end

    private

    def cow_params
      params.require(:cow).permit(:name)
    end


end
