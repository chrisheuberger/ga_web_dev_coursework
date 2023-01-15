require 'faker'

class Person
  def initialize
    @name  = Faker::Name.name
    @email = get_email
    @second_email = Faker::Internet.email(@name)
    @catchphrase  = Faker::Company.catch_phrase
  end

  # Nessa's sweet solution
  def get_email
    company = Faker::Company.name.gsub(" ", "-")
    email_name = @name.gsub(" ", "_")
    email = "#{email_name}@#{company}.com"
  end
end

