

require_relative "./Person"
require_relative "Car"

andree = Person.new("Andreee", 1)
mattyboi = Person.new("Mattthw", 1)
delorean = Car.new


puts "before entering:"
delorean.passengers.each{|passenger| puts passenger.name}

delorean.accept_passenger(mattyboi)

puts "-------------"
puts "after entering:"
delorean.passengers.each{|passenger| puts passenger.name}

