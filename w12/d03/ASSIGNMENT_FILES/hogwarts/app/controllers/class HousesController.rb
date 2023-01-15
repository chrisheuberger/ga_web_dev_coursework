class HousesController < ActionController
  def index
    @house = House.all
  end

end
