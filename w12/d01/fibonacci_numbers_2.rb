def fib(n)
  n == 1 ? n : n + fib(n - 1)
end

def fib_iterative(n)
  x = 0
  n.downto(1) do |n|
    x = x + n
  end
  x
end

puts fib_iterative(4)
puts fib_iterative(3)
puts fib_iterative(2)
