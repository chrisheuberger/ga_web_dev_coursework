def menu
  puts "Which calculator would you like to use?"
  puts "Choose one: basic, advanced or factorials?"
  puts "Or type q to quit."
  response = gets.chomp
  if response == "basic"
    basic_calc
  elsif response == "advanced"
    advanced_calc
  elsif response == "factorials"
    factorial
  elsif response == "q"
    puts "k see ya. quitter."
  else
    puts "What did you say ding dong?"
    response = menu
  end
end

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp
  puts "What's your first number?"
  n1 = gets.chomp!.to_i
  puts "What's your second number?"
  n2 = gets.chomp!.to_i

  case
    when operation == "a"
      puts "You chose addition."
      add_answer = n1 + n2
      puts add_answer
    when operation == "s"
      puts "You chose subtraction."
      sub_answer = n1 - n2
      puts sub_answer
    when operation == "m"
      puts "You chose multiplication"
      multip_answer = n1 * n2
      puts multip_answer
    when operation == "d"
      puts "You chose division."
      div_answer = n1 / n2
      puts div_answer
    else
      puts "That's not a choice ding dong! Try again."
    end

end

def advanced_calc
  print "(p)ower, (s)qrt: "
  operation = gets.chomp

  case
    when operation == "p"
      puts "You chose power."
      puts "What's your first number?"
      n1 = gets.chomp!.to_i
      puts "What's your second number?"
      n2 = gets.chomp.to_i
      p_answer = n1**n2
      puts p_answer
    when operation == "s"
      puts "You chose square root."
      puts "What number would you like to do?"
      n1 = gets.chomp.to_i
      s_answer = Math.sqrt(n1)
      puts s_answer
    else
      puts "That's not a choice ding dong! Try again."
  end

end

#Matt's solution

def factorial(n)
  return 1 if n == 1
  n * factorial(n-1)
end

# My attempt
# def factor_calc
#   puts "Let's do factorials!"
#   puts "Gimme a number."
#   fget = gets.chomp.to_i
#   if fget = 0
#     1
#   else
#     fget * fget(fget-1)
#   end
# end

response = menu
