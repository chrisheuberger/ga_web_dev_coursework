require_relative 'apartment'
require_relative 'person'
require_relative 'building'

test1 = Person.new("Sally", 30, 25000)
puts test1

test2 = Apartment.new("1R", 2000, 1000, 2, 1)
puts test2

test3 = Apartment.new("2R", 1000, 3000, 2, 2)
puts test2

test4 = Apartment.new("3L", 4000, 5000, 0, 7)
puts test2

test5 = Building.new("5 E 8th St", "Early-Old", 6)
puts test3

test6 = Building.new("6 E 4th St", "Early-Modern", 3)
puts test3

test7 = Building.new("4 E 6th St", "Old-Modern", 5)
puts test3

input = nil

puts "Are you a (t)enant or a (b)uilding owner?"
puts "Or (q)uit."
input = gets.chomp.downcase[0]

if input = "q"
  puts "K, see ya quitter."
else
  case input
  when "b"
    puts "Cool, who is your tenant?"
    new_person = [gets.chomp]
  when "t"
    puts "Cool. What building would you like?"
    new_building = gets.chomp.downcase[0]
    puts "Cool. What apartment would you like?"
    new_apartment = gets.chomp.to_s
    puts "You just chose apartment #{unit} at #{address}."
  else
    puts "Wha?"
  end

end
