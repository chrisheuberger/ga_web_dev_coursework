require 'pry'

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def to_s
    @value || nil
  end
end

class SinglyLinkedList
  attr_accessor :head

  def initialize(first_value=nil)
    # initializes the linked list
    @head = Node.new(first_value) if first_value
  end

  def prepend(value)
    #prepend to the beginning
    prepender = Node.new(value)
    prepender.next_node = self.head
    self.head = prepender
  end

  def append(value)
    # append to the end
    appender = Node.new(value)
    node = self.head
    while node.next_node != nil do
      node = node.next_node
    end
    node.next_node = appender
  end

  def remove
    # removes the first node
    new_head = self.head.next_node
    self.head = new_head
  end

  def last
    # get's the last node
    node = self.head
    while node.next_node != nil do
      node = node.next_node
    end
    node
  end

  def length
    # calculates the length of the list
    length = 1
    node = self.head
    while node.next_node != nil do
      node = node.next_node
      length += 1
    end
    return length
  end

  def find(input)
    # returns the node with that value or nil if none found
    node = self.head
    while node do
      if node.value == input
        return node.value
      else
        node = node.next_node
      end
    end
    return nil
  end

end

list = SinglyLinkedList.new('first_head')

puts "NEW LIST TEST:"
puts list.head
puts ""

list.prepend('prepended_head')

puts "PREPEND TESTS:"
puts list.head
puts list.head.next_node
puts ""

list.append('appended_node')

puts "APPEND TESTS:"
puts list.head
puts list.head.next_node
puts list.head.next_node.next_node
puts ""

list.remove

puts "REMOVE TESTS HEAD SHOULD BE FIRST HEAD AGAIN"
puts list.head
puts ""

puts "LAST NODE TEST SHOULD BE APPENDED"
puts list.last
puts ""

puts "LENGTH TEST SHOULD BE TWO"
puts list.length
puts ""

puts "FIND TEST SHOULD RETURN APPENDED"
puts list.find('appended_node')
