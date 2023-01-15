class SessionsController < ApplicationController
  def new # login-form
  end
  def create # login
    wizard = login(params[:email], params[:password])
    if wizard
      redirect_to root_path
    else
      render :new
    end
  end
  def destroy # logout
    logout
    redirect_to root_path
  end
end

