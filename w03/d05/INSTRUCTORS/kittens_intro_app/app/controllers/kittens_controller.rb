class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end
end