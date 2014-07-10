require'Faker'

class Person
  attr_accessor :name
  def initialize
    @name = Faker::Name.name
  end
  def to_s
    "Hi, my name is #{@name.upcase}"
  end
end
