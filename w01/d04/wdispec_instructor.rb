require 'Rainbow'

def assert_equal(actual, expected, statement=nil)
  comparison_string = "Actual:   #{actual}\nExpected:  #{expected}"
  a_single_message = ""
  if actual == expected
    color = "green"
    if statement
      a_single_message = statement
    else
      a_single_message = comparison_string
    end
  else
    color = "red"
    # puts Rainbow(statement).red if statement
    if statement
      a_single_message = statement
    end
    a_single_message += "\n"
    a_single_message += comparison_string
  end
  puts Rainbow(a_single_message).send (color)
end

