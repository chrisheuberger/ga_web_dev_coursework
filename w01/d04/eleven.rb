puts "What's the volume of your amplifier?"
vol = gets.chomp.to_i
puts "Do you want to push it over the cliff? (y/n)"
cliff = gets.chomp.downcase[0]

if vol < 11 && cliff == "y"
 puts "Crank it to eleven."
elsif vol < 11 && cliff == "n"
 puts "You are not very rock and/or roll."
else
 puts "Crank it up to #{vol+1}."
end
