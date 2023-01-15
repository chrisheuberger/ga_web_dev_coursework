def factorial(n)
    return n  if n <= 2
    return n * factorial(n-1)
end

# factorial(7)
    n = 7
    return = 7 * factorial(6) = 5040
factorial(6)
    n = 6
    return = 6 * factorial(5) = 720
factorial(5)
    n = 5
    return = 5 * factorial(4) = 120
  factorial(4)
    n = 4
    return = 4 * factorial(3) = 24
  factorial(3)
    n = 3
    return = 3 * factorial(2) = 6
  factorial(2)
    n = 2
    return 2





def factorial_iterative(n)
  product = 1
  n.downto(2) do |x|
    product *= x
  end
  product
end

