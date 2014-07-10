class Person
  attr_accessor :name, :age, :favorite_color, :favorite_food
  def initialize(name, age, favorite_color, favorite_food)
    @name = name
    @age = age
    @favorite_color = favorite_color
    @favorite_food = favorite_food
  end

    def hello
      puts "Hello"
    end

    def favorite_color=(color)
      @favorite_color = color
    end

    def bio
      puts "name: " + @name + " age: " + age.to_s + " favorite color: " + favorite_color + " favorite food: " + favorite_food
    end
end

Chris = Person.new('Chris', 31, 'pasta', 'black')

Chris.hello
Chris.favorite_color = 'green'
Chris.bio
