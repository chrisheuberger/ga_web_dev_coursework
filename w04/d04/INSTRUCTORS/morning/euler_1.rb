# PAUL'S SOLUTION
# Create an array of numbers 1..999
arr = (1..999).to_a
arr.map! do |num|
  if num % 3 == 0 || num % 5 == 0
    num
  else
    nil
  end
end
sum = 0

arr.compact.each do |num|
  sum += num
end
puts "Pauls's Solution:"
puts sum

# STEVE
sum = 0
arr = (1..999).to_a
arr.each do |i|
  if i % 3 == 0
    sum += i
  elsif i % 5 == 0
    sum += i
  end
end
puts "Steve's solution"
puts sum

# WAKE
puts "Wake's Solution"
puts (1..999).select{|x| x % 3 == 0 || x % 5 == 0}.inject{|sum, n| sum + n}
# puts (1..999).to_a.select!{|x| x % 3 == 0 || x % 5 == 0}.inject(:+)
# puts (1..999).to_a.select!{|x| x % 3 == 0 || x % 5 == 0}.reduce(:+)

























