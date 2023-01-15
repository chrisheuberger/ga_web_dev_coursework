def retrieve_comma_data
  comma_people = []
  File.open('input_data/comma.txt', 'r') do |commas|
    commas.each_line do |line|
      person = line.split(', ')
      comma_people << person
    end
  end
  return comma_people
end
