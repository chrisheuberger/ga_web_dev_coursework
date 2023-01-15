require 'benchmark'

def rec_add(array)
  if array.length == 1
    return array[0]
  else
    num = array[0]
    array.shift
    num + rec_add(array)
  end
end

def iter_add(array)
  sum = 0
  array.each do |elem|
    sum += elem
  end
  sum
end

Benchmark.bmbm(20) do |bm|
  bm.report('recursive') do
    100.times do
      rec_add([1, 2, 3, 4, 5])
    end
  end

  bm.report('iterative') do
    100.times do
      iter_add([1, 2, 3, 4, 5])
    end
  end
end
