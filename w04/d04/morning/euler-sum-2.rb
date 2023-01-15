thousand_arr = (1..999).to_a
thousand_arr.map! do |x|
  if x % 5 == 0 || x % 3 == 0
    num
  else
    nil
  end
end

sum=0
arr.compact.each do |num|
  sum += num
end
puts sum
