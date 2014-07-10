puts "gimme a number."
num = gets.chomp

def prime?(num)

  return false if number <= 1
  i = 2

  while i < num
    return false if num%i == 0
    i += 1
  end

true
