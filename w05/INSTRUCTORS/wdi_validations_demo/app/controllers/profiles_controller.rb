class ProfilesController < ApplicationController

  # before_action :authorize
  before_action :authorize, only: [:index]

  def index
  end

end
