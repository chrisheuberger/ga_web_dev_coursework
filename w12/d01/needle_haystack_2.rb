require('pry')
require('benchmark')

class Needle
end

class Straw
end

class Haystack
  attr_reader :constituents
  def initialize
    @constituents = 1_000_000.times.map{ Straw.new }
    @constituents[rand(0..1_000_000)] = Needle.new
  end
end

def find_needle_iterative(array)
  array.each {|straw| puts array.index(straw) if straw.class == Needle}
end

def find_needle_recursive(array)
  if array.length == 1
    the_thing = array[0]
    return the_thing.class == Needle ? the_thing : false
  else
    find_needle_recursive(array[0..array.length/2-1]) || find_needle_recursive(array[array.length/2..array.length-1])
  end
end

my_haystack = Haystack.new()

find_needle_iterative(my_haystack.constituents)
needle = find_needle_recursive(my_haystack.constituents)

Benchmark.bmbm(20) do |bm|
  bm.report('iterative') do
    100.times do
      find_needle_iterative(my_haystack.constituents)
    end
  end

  bm.report('recursion') do
    100.times do
      find_needle_recursive(my_haystack.constituents)
    end
  end
end

binding.pry
