class WelcomeController < ApplicationController
  def index
    @lines = Line.all
  end
end
