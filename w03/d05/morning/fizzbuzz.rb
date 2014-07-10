def fizzbuzz
  (1..100).each do |i|
    if i % 3 == 0 && i % 5 == 0
      puts 'fizzbuzz'
    elsif i % 5 ==0
      puts 'fizz'
    elsif i % 3 == 0
      puts 'buzz'
    else
      puts i
    end
  end
end
