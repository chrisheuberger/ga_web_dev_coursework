def retrieve_space_data
  space_people = []
  File.open('input_data/space.txt', 'r') do |spaces|
    spaces.each_line do |line|
      person = line.split(' ')
      space_people << person
    end
  end
  return space_people
end
