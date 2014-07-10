user_input = nil
trys = []

puts "Welcome to the GUESS THE NUMBER GAME"
puts "Here we go..."
puts "I'm thinking of a number 1 through 10."
puts "What number am I thinking of?"

user_input = gets.chomp!
trys.push(user_input)

secret_number = rand(1..10)

total_trys = trys.count

  if user_input == secret_number
    puts "You guessed right! The number was #{secret_number}. It took you #{total_trys} trys."
  elsif user_input >= secret_number
    puts "You ding dong, that's too high. Try again."
  elsif user_input <= secret_number
    "You ding dong, that's too low. Try again."
  end

puts "So much fun, right."
