require 'rainbow'

def assert_equal(actual, expected, statement)
  if actual == expected
    #print the statement in green
    puts Rainbow(statement).green
  else
    # print the statement in red
    puts Rainbow(statement).red
  end
  puts actual
  puts expected
end

def add(x,y)
  x + y
end

def divide(x,y)
  # if y == 0
  #   return "NaN"
  # end
  return "NaN" if y.zero?
  return x.to_f / y.to_f
end


actual   = add(2,2)
expected = 4
statement = "We have a functioning add method"
assert_equal(actual, expected, statement)

actual = divide(8,5)
expected = 1.6
statement = "We have a divide method"
assert_equal(actual, expected, statement)

actual = divide(1,0)
expected = "NaN"
statement = "Method returns NaN when division by zero"
assert_equal(actual, expected, statement)





