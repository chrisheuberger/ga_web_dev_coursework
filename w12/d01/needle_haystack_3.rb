require 'pry'
require 'benchmark'

class Needle
end

class Straw
end

class Haystack
  attr_accessor :constituents
  def initialize
    @constituents = 1_000_000.times.map{Straw.new}
    @constituents[rand(0..1_000_000)] = Needle.new
  end
end

def find_needle(array)
  if array.length == 1
    return array[0].class == Needle ? array[0] : false
  else
    find_needle(array[0..array.length/2-1]) || find_needle(array[array.length/2..array.length-1])
  end
end

def find_needle_iterative(array)
  array.each do |elem|
    return elem if elem.class == Needle
  end
end

h = Haystack.new

Benchmark.bmbm(20) do |bm|
  bm.report('iterative:') {100.times do find_needle_iterative(h.constituents) end}
  bm.report('recursive:') {100.times do find_needle(h.constituents) end}
end
