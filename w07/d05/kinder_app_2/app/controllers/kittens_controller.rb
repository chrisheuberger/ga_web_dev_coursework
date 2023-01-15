class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.json {render :json => @kittens.to_json}
      format.html
    end
  end

  def create
    new_kitten = Kitten.create(kitten_params)
    respond_to do |format|
      format.html {redirect_to random_path}
      format.json {render :json => new_kitten.to_json}
    end
  end

  private

  def kitten_params
    params.require(:kitten).permit(:url)
  end
end
