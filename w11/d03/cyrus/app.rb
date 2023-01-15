require 'pry'
require 'date'

require_relative 'lib/person'
require_relative 'lib/comma'
require_relative 'lib/pipe'
require_relative 'lib/space'
require_relative 'lib/outputs'

comma = retrieve_comma_data
pipe = retrieve_pipe_data
space = retrieve_space_data

people = []

comma.each do |person|
  formatted_date = person[4].gsub("\n","")
  person = Person.new(person[0], person[1], person[2], formatted_date, person[3])
  people << person
end

pipe.each do |person|
  formatted_date = person[5].gsub("\n","")
  formatted_date = formatted_date.gsub("-","/")
  if person[3] == "M"
    formatted_gender = "Male"
  elsif person[3] == "F"
    formatted_gender = "Female"
  end
  person = Person.new(person[0], person[1], formatted_gender, formatted_date, person[4])
  people << person
end

space.each do |person|
  formatted_date = person[4].gsub("\n","")
  formatted_date = formatted_date.gsub("-","/")
  if person[3] == "M"
    formatted_gender = "Male"
  elsif person[3] == "F"
    formatted_gender = "Female"
  end
  person = Person.new(person[0], person[1], formatted_gender, formatted_date, person[5])
  people << person
end

output_one(people)
output_two(people)
output_three(people)
