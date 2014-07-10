Puts "What's your age?"

response = gets.chomp.to_i

if response >= 21
  puts "congrats. have a drink."
else response <= 21
  puts "have a drink anyway. whatever."
end
