class Client
  attr_accessor :name, :age, :pets
  def initialize(name, age, pets)
    @name = name
    @age = age
    @pets = {}
  end

 def pet_count
    @pets.count
  end

  def to_s
    puts "Beth is a #{:age} year old with #{pet_count} pets."
  end
end

