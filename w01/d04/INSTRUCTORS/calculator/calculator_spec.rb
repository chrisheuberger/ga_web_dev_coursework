
require_relative '../wdispec.rb'  # The version you were mananging
# require_relative '../wdispec_instructor.rb'  # The version we refactored together


require_relative 'calculator.rb'

calc = Calculator.new

test = "calculator is an instance of the Calculator class"
actual = calc.class
expected = Object.const_get('Calculator')
assert_equal(actual, expected, test)

test = "calculator has an .add method that adds two numbers"
actual  = calc.add(2,4)
expected = 6
assert_equal(actual, expected, test)


test = "calculator has a .subtract method that subtracts two numbers"
actual = calc.subtract(4,2)
expected = 2
assert_equal(actual, expected, test)

test = "calculator has a .divide method that works"
actual = calc.divide(8,5)
expected = 1.6
assert_equal(actual, expected, test)

test = "calculator has a .multiply method"
actual = calc.multiply(13,13)
expected = 169
assert_equal(actual, expected, test)

test = "it doesn't allow divison by zero"
actual = calc.divide(1,0)
expected = "NaN"
assert_equal(actual, expected)
