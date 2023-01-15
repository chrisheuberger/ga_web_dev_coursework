class SessionsController < ApplicationController

  def new
    # go to log-in form
  end

  def create

    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Signed In as #{user.email}"
    else
      redirect_to log_in_path, alert: 'Log-In Failed'
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to log_in_path, notice: "Logged-Out"
  end

end
