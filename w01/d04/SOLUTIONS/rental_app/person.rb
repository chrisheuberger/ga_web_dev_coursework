class Person

  attr_accessor :name, :age, :income
  def initialize(name, age, income)
    @name = name
    @age = age
    @income = income
  end

  def to_s
    "#{@name} is #{@age} years old and earns $#{@income} per year."
  end

end
