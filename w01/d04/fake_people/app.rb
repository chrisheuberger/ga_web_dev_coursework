require_relative = "Person"

arr = 1000.times.map{Person.new}

# # A way
# array = []
# 1_000.times do
#   person = Person.new
#   array.push(person)
# end

# # Matt's fave
# arr = 1000.times.map{Person.new}

# #Another way
# person_array = []
# 1_000.times { person_array << Person.new }

# person_array.map{|person| person.name}

# # person_array.each do |person|
# #   puts "Hi my name is #{person.name}"
# # end

# person_array.each do |person|
#   puts person
# end
