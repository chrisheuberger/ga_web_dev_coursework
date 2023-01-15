puts "what's your volume?"
volume = gets.chomp.to_i

puts "do you want to take it over the cliff?(y/n)"
cliff = gets.chomp.downcase[0]

if volume < 11 && cliff == "y"
  puts "Crank it to 11"
elsif volume < 11 && cliff == "n"
  puts "You are a feeble rocker."
elsif volume >= 11 && cliff == "n"
  puts "rock steady"
else
  puts "turn it up to #{volume+1}"
end