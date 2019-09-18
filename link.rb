class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

# Stack is a FILO data structure (first in last out)
class Stack
  attr_accessor :top_node
  def initialize
    @top_node = nil
  end

  # Push a value onto the stack
  def push(value)
    node = LinkedListNode.new(value, top_node)
    top_node = node.next_node 
    if top_node = nil
      top_node = node
  end
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    temp_node = @top_node
    puts temp_node
  end
end

def print_values(node)
  # base case (also a guard)
  return puts 'nil' if node.nil?

  print "#{node.value} --> "

  # recursive case
  print_values(node.next_node)
end

def reverse_list_iterative(node)
  stack = Stack.new

  # step 1: get all the nodes into the stack
  while (!node.nil?)
    stack.push(node)
    node = node.next_node
  end

  # step 2: reverse list (by popping from stack)
  node = stack.pop
  while (node = stack.pop)
    prev_node = node
    prev_node.next_node = node
  end

  return node
end

def reverse_list_recursive(node)

end

node = LinkedListNode.new(0)
100.times do |index|
  node = LinkedListNode.new(index + 1, node)
end



print_values(node)
puts '---------------'
print_values(reverse_list_iterative(node))