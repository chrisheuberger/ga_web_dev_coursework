class UsersController < ApplicationController

  def index
    @user = current_user
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render 'new'
    end
  end


  private

  def user_params
    params.require(:user).permit(:email, :email_confirmation, :password, :password_confirmation, :terms_of_service)
  end

end
