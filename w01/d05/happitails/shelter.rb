class Shelter
  attr_accessor :name, :address
  def initialize(name, address)
    @name = name
    @address = address
    @animals = animals
    @clients = @name.length
  end
  def to_s
    puts "#{@name} shelter at #{@address} has #{@animals} animals and #{@clients} people"
  end
end





