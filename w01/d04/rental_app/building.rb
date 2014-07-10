class Building
 attr_accessor :address, :style, :floors, :apartments
  def initialize(address, style, floors)
    @address = address
    @style = style
    @floors = floors
    @apartments = {}
  end
  def apartment_count
   @apartments.length
  end
  def to_s
    "This building has #{apartment_count} apartments."
  end
end
