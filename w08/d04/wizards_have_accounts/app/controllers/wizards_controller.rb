class WizardsController < ApplicationController
  before_action :require_login, only: [:profile]
  def new
    @wizard = Wizard.new
  end
  def create
    @wizard = Wizard.create(wizard_params)
    redirect_to login_path
  end
  def profile
  end
  private

  def wizard_params
    params.require(:wizard).permit(:email, :password)
  end
end
