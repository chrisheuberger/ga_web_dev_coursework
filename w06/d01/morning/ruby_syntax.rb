# ruby comments

my_ruby_array = ['lich', 'da', 'grey']

def multiply(x, y)
  x * y
end

def greet(joy_factor)
  if joy_factor > 10
    note = 'I am so soo happy'
  elsif joy_factor > 0
    note = 'I am happy'
  else
    note = 'I am ehh'
  end
  note
end

# - - -

day = 'Tuesday'
case day
when 'Monday'
  p 'happy coffee'
when 'Tuesday'
  p 'how was that coffee?'
when 'Friday'
  p 'Im in luf'
else
  p 'this is day does not count'
end

# - - -

my_name = ['lich', 'da', 'gray']

my_name.each do |name_itself|
  p name_itself + '...is part of the name'
end

# - - -

my_hash = {name: 'lichard', age: 3, hobby: 'learning js'}
