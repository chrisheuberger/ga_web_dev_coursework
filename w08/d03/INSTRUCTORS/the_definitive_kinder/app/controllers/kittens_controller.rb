class KittensController < ApplicationController
  def index
    kittens = Kitten.all
    respond_to do |format|
      format.html
      #format.json {render :json => kittens.to_json}
      format.json {render json: kittens}
    end
  end

  def create
    kitten = Kitten.create(kitten_params)
    render :json => kitten.to_json
  end

  private

  def kitten_params
    params.require(:kitten).permit(:url)
  end
end