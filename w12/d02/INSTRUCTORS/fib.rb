def fib(n)
  return n if n <= 1
  return fib(n-1) + fib(n-2)
end

def recursive_add(arr)
  return arr[0] if arr.length == 1
  return arr.pop + recursive_add(arr)
end




# 1
# 1
# 2
# 3
# 5
# 8
# 13
# 21