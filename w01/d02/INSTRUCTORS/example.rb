
puts "heloos"

puts "What is your name?"
name = gets.chomp
puts "Nice to meet you #{name}"

puts "How are you feeling today?"
mood = gets.chomp
puts "You are feeling #{mood}"

case mood
when 'good'
  puts "Yay!  You are feeling weel"
when 'bad'
  puts "Oh No!  :("
else
  puts "I don't know that mood"
end

if mood == 'good'
  puts ';)'
end

puts "we are done here..."
