class Person


  attr_accessor :favorite_color
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
    @favorite_color = "chartreuse"
    @favorite_foods = [ "coconut oil", "grass fed ghee", "pastured lamb",
                        "turmeric", "pink himalayan salt"]
  end

  # def favorite_color=(color)
  #   puts "testststet"
  #   @favorite_color = color
  # end


  def hello
    puts 'hello frizzle friend'
  end
end

