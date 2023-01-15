require 'benchmark'
require 'mathn'

array = []

iterations = 1000

10000.times do
  array.push(rand(100))
end

def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end
  end
  list
end

def quicksort(array)
  return array if array.length <= 1
  pivot_index = (array.length / 2).to_i
  pivot_value = array[pivot_index]
  array.delete_at(pivot_index)
  lesser = Array.new
  greater = Array.new
  array.each do |x|
    if x <= pivot_value
      lesser << x
    else
      greater << x
    end
  end
  return quicksort(lesser) + [pivot_value] + quicksort(greater)
end

Benchmark.bmbm(10) do |a|
  a.report('sorting using array#sort') do
    iterations.times do
      array.sort
    end
  end

  a.report('sorting using bubble sort') do
    iterations.times do
      bubble_sort(array)
    end
  end

  a.report('sorting using quick sort') do
    iterations.times do
      quicksort(array)
    end
  end
end
