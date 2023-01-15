class SessionsController < ApplicationController
  def new
  end
  def create
    wizard = login(params[:email],params[:password])
    if wizard
      redirect_to root_path
    else
      render :new
    end
  end
  def destroy
    logout
    redirect_to root_path
  end

end
