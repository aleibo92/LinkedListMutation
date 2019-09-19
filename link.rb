class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

# Stack is a FILO data structure (first in last out)
class Stack
  def initialize
    @top_node = nil
  end

  # Push a value onto the stack
  def push(value)
    @top_node = LinkedListNode.new(value, @top_node)
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    if @top_node.nil? 
       puts "nil"
    else
    value = @top_node.value
    @top_node = @top_node.next_node
    value
    end
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

  return prev_node.next_node
end

def reverse_list_recursive(node)





end





node = LinkedListNode.new(0)
100.times do |index|
  node = LinkedListNode.new(index + 1, node)
end


print_values(reverse_list_iterative(node))




