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
  attr_accessor :head, :list

  def initialize(first_value=nil)
    # initializes the linked list
    @head = Node.new(first_value) if first_value
  end

  def prepend(value)
    #prepend to the beginning
    @node = Node.new(value)
    @node.next_node = @head
    @holder = @head
    @head = @node
    # @node.next_node = @head
    # @list.insert(0, @node)

  end

  def append(value)
    # append to the end
    @node = Node.new(value)
    last_node = @head
    while last_node.next_node != nil
      last_node = last_node.next_node
    end
    last_node.next_node = @node
  end

  def remove
    # removes the first node
    @head = @head.next_node
  end

  def last
    # get's the last node
    last_node = @head
    while last_node.next_node != nil
      last_node = last_node.next_node
    end
    last_node
  end

  def length
    # calculates the length of the list
    last_node = @head
    count = 1 if last_node != nil
    while last_node.next_node != nil
      last_node = last_node.next_node
      count += 1
    end
    count
  end

  def find(input)
    # returns the node with that value or nil if none found
    select_node = @head
    while select_node.next_node != nil
      return select_node if select_node.value == input
      select_node = select_node.next_node
    end
    return select_node if select_node.value == input
    return nil
  end

end

sing_list = SinglyLinkedList.new(3)

binding.pry


# Solution #2?
# require 'pry'
# class Node
#   attr_accessor :value, :next_node

#   def initialize(value = nil)
#     @value = value
#     @next_node = nil
#   end

#   def to_s
#     @value || nil
#   end
# end

# class SinglyLinkedList
#   attr_accessor :head, :list

#   def initialize(first_value=nil)
#     # initializes the linked list
#     @head = Node.new(first_value) if first_value
#     @list = []
#     @list.push(@head)
#   end

#   def prepend(value)
#     #prepend to the beginning
#     @node = Node.new(value)
#     @node.next_node = @list.first
#     @list.insert(0, @node)
#   end

#   def append(value)
#     # append to the end
#     @node = Node.new(value)
#     @list.push(@node)
#     @list[-2].next_node = @list.last
#   end

#   def remove
#     # removes the first node
#     @list.shift
#   end

#   def last
#     # get's the last node
#     @list.last
#   end

#   def length
#     # calculates the length of the list
#     @list.length
#   end

#   def find(input)
#     # returns the node with that value or nil if none found
#     @list.each {|node| return node if node.value == input}
#     return nil
#   end

# end

# sing_list = SinglyLinkedList.new(3)

# binding.pry
