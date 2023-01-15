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
  end

  def append(value)
    # append to the end
  end

  def remove
    # removes the first node
  end

  def last
    # get's the last node
  end

  def length
    # calculates the length of the list
  end

  def find(input)
    # returns the node with that value or nil if none found
  end

end
