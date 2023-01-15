def output_one(array)
  puts "Output 1:"
  array.sort_by {|x| [x.gender, x.last]}
  array.each do |person|
    puts person.information
  end
  puts ""
end

def output_two(array)
  puts "Output 2:"
  array.sort! {|a,b| Date.strptime(a.dob, '%m/%d/%Y') <=> Date.strptime(b.dob, '%m/%d/%Y')}
    array.each do |person|
    puts person.information
  end
  puts ""
end

def output_three(array)
  puts "Output 3:"
  array.sort! {|a,b| Date.strptime(b.dob, '%m/%d/%Y') <=> Date.strptime(a.dob, '%m/%d/%Y')}
    array.each do |person|
    puts person.information
  end
end
