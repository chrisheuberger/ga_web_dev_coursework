class HumansController < ApplicationController

  def index
    @humans = Human.all
    respond_to do |format|
      format.json { render :json => @humans.to_json}
      format.html
    end
  end

  def show
    @human = Human.find(params[:id])
  end

  def edit
    @human = Human.find(params[:id])
  end

  def create
    human = Human.create(human_params)
    redirect_to human_path(human)
    respond_to do |format|
      format.html { redirect_to human_path(person) }
      format.json { render :json => human.to_json }
    end
  end

  def update
    human = Human.find(params[:id])
    human.update(human_params)
    redirect_to human_path(human)
  end

  def new
  end

  def destroy
    Human.delete(params[:id])
    redirect_to humans_path
  end

  private

  def human_params
    params.require(:human).permit(:name, :email)
  end

end
