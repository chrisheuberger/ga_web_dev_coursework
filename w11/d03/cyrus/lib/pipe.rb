def retrieve_pipe_data
  pipe_people = []
  File.open('input_data/pipe.txt', 'r') do |pipes|
    pipes.each_line do |line|
      person = line.split(' | ')
      pipe_people << person
    end
  end
  return pipe_people
end
