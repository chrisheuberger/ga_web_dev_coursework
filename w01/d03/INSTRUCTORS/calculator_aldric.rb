def main_loop
  # This does a lot of things:
  # - display a menu
  # - manage user input
  # - do something with user input
  # Each of these things could be put into its own method
  print "(b)asic, (a)dvanced, (q)uit?: "
  valid_input = ['a', 'b', 'q']
  user_input = gets.chomp.downcase until valid_input.include?(user_input)
  case user_input
  when 'a' then basic_calc
  when 'b' then advanced_calc
  when 'q' then quit
  end
end

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
end

def advanced_calc
  print "(p)ower, (s)qrt: "
end

def quit
  'q'
end

response = main_loop

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = main_loop
end
