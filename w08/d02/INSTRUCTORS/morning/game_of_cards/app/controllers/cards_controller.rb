class CardsController < ApplicationController
  def index
    cards = Card.all
    respond_to do |format|
      format.html
      format.json {render json: cards}
    end
  end
end