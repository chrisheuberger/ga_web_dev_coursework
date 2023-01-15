# iterate on numbers from 1-100
# if divisible by 3 and 5 print fizzbuzz
# if divisible by 3 print fizzbuzz
# if divisible by 5 print buzz
# otherwise, print the number

1.upto(100) do |i|
# if i % 15 == 0
  if i % 3 == 0 && i % 5 == 0
    puts "fizzbuzz"
  elsif i % 3 == 0
    puts "fizz"
  elsif i % 5 == 0
    puts "buzz"
  else
    puts i
  end
end

# Carlos's Way.

i = 1
while i <= 100
  if i % 15 == 0
    puts "fizzbuzz"
  elsif i % 3 == 0
    puts "fizz"
  elsif i % 5 == 0
    puts "buzz"
  else
    puts i
  end
  i += 1
end

# Jeff's Way
1.upto(100) do |i|
  string = ""
  string += "fizz" if i % 3 == 0
  string += "buzz" if i % 5 == 0
  string = i if string == ""
  puts string
end



























