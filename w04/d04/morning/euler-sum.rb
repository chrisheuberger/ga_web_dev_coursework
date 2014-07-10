sum = 0
arr = (1..999).to_a

arr.map do |i|
  if i % 5 == 0 || i % 3 == 0
    i
  else
   nil
  end
end

arr.compact.each do |num|
  sum += num
end

puts sum
