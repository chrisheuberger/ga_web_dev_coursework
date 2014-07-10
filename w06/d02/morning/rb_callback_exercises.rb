class Person
  attr_accessor :age
  def initialize(age)
    @age = age
  end
end

new_age = Proc.new { |chris| puts chris.age }

chris = Person.new(31)

def increment(chris, new_age)
  chris.age += 1
  new_age.call(chris)
end
