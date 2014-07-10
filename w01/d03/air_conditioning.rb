puts "What is the temperature now?"
temp = gets.chomp.to_i

puts "Is the AC working? (y/n)"
ac = gets.chomp.downcase[0]
#indexing the first string

puts "What temperature do you wish it was?"
wish = gets.chomp.to_i

if ac=="y" && temp > wish
  puts "turn on AC please"
elsif temp > wish && ac == "n"
  puts "Fix AC"
elsif temp < wish && ac == "n"
  puts "Fix it whenever"
else
  puts "maybe get a heater"
end
