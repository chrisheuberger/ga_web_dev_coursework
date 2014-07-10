require 'faker'

class Person
  def initialize
    @name = Faker::Name.name
    @email = Faker::Internet.email(@name)
    @tagline = Faker::Company.catch_phrase
  end
end
