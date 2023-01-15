class FarmersController < ApplicationController


    #     farmers GET    /farmers(.:format)                          farmers#index
    def index
      @farmers = Farmer.all
    end

    #             POST   /farmers(.:format)                          farmers#create
    def create
      farmer = Farmer.create(farmer_params)
      redirect_to "/farmers/#{farmer.id}"
    end

    #  new_farmer GET    /farmers/new(.:format)                      farmers#new
    def new
    end

    # edit_farmer GET    /farmers/:id/edit(.:format)                 farmers#edit
    def edit
      @farmer = Farmer.find(params[:id])
    end

    #      farmer GET    /farmers/:id(.:format)                      farmers#show
    def show
      @farmer = Farmer.find(params[:id])
    end

    #             PATCH  /farmers/:id(.:format)                      farmers#update
    #             PUT    /farmers/:id(.:format)                      farmers#update
    def update
      farmer = Farmer.find(params[:id])
      farmer.update(farmer_params)
      redirect_to "/farmers/#{farmer.id}"
    end

    #             DELETE /farmers/:id(.:format)                      farmers#destroy
    def destroy
      Farmer.delete(params[:id])
      redirect_to "/farmers"
    end

    private

    def farmer_params
      params.require(:farmer).permit(:name)
    end

end
