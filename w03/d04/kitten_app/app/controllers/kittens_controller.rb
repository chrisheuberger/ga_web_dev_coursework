class KittensController < ApplicationController
  def index
    @kitten = Kitten.new
  end
  def kittens
    @kitten = Kitten.new
  end
end
