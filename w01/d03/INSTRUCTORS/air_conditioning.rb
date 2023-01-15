# Paul's Sweet Solution

puts "What's the current temperature?"
temp = gets.chomp.to_i

puts "Is the air conditioner working?(y/n)"
# YES
#yes
#yesaads
ac_working = gets.chomp.downcase[0]

puts "what temperature do you wish it was"
desired_temp = gets.chomp.to_i

if temp > desired_temp && ac_working == "y"
  puts "Turn the air conditioner on!"
elsif temp > desired_temp && ac_working == "n"
  puts "Fix the a/c please"
elsif temp < desired_temp && ac_working == "n"
  puts "Fix it whenever!"
else
  puts "maybe get a heater?"
end