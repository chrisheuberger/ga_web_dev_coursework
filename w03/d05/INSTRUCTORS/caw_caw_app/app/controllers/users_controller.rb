class UsersController < ApplicationController

#       users GET    /users(.:format)          users#index
  def index
    @users = User.all
  end

#           GET    /users/new(.:format)      users#new
  def new
    # Show me a form!!!
  end

#           POST   /users(.:format)          users#create
  def create
    new_user = User.create( params.require(:user).permit(:username) )
    redirect_to "/users/#{new_user.id}"
  end

#           GET    /users/:id/edit(.:format) users#edit
  def edit
    @user = User.find(params[:id])
    # Show me a form!!
  end

#           PUT    /users/:id(.:format)      users#update
  def update
     edited_user = User.find(params[:id])
     edited_user.update( params.require(:user).permit(:username) )
     redirect_to "/users/#{edited_user.id}"
  end

#           GET    /users/:id(.:format)      users#show
  def show
    @user = User.find(params[:id])
    # Show me the user page
  end

#           DELETE /users/:id(.:format)      users#destroy
  def destroy
    User.delete(params[:id])
    redirect_to '/users'
  end

end
