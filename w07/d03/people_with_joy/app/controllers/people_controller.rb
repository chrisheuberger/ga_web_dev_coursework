class PeopleController < ApplicationController

  def index
    @people = Person.all
    respond_to do |format|
      format.json { render :json => @people.to_json}
      format.html
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def create
    person = Person.create(person_params)
    redirect_to person_path(person)
  end

  def update
    person = Person.find(params[:id])
    person.update(person_params)
    redirect_to person_path(person)
  end

  def new
  end

  def destroy
    Person.delete(params[:id])
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :email)
  end

end
