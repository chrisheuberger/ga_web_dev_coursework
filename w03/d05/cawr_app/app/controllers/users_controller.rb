class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
  end

  def create
    new_user = User.create( params.require(:user).permit(:username) )
    redirect_to "/users/#{new_user.id}"
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
     edited_user = User.find(params[:id])
     edited_user.update( params.require(:user).permit(:username) )
     redirect_to "/users/#{edited_user.id}"
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    User.delete(params[:id])
    redirect_to '/users'
  end

end
