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
    return nil if @top_node.nil?
    temp_node = @top_node
    @top_node = temp_node.next_node
    return temp_node.value
  end
end

def print_values(node)
  # base case (also a guard)
  return puts 'nil' if node.nil?

  print "#{node.value} --> "

  # recursive case
  print_values(node.next_node)
end

def reverse_list_mutation(node)
  #loop through nodes
  #point arrow to previous instead of next
  prev_node = nil

  while (!node.nil?)

    #save references
    curr_node = node
    next_node = node.next_node
    
    #reassign reference
    curr_node.next_node = prev_node

    #shift focus
    node = next_node
    prev_node = curr_node
  end

  return prev_node

end

def is_circular(node)
  hashmap = Hash.new
  hashmap[node.object_id] = true
  while node 
    return true if hashmap[node.object_id] == true
    hashmap[node.object_id] = true
    node = node.next_node
  end
end

node = LinkedListNode.new(0)
10.times do |index|
  node = LinkedListNode.new(index + 1, node)
end

stack = Stack.new

# print_values(node)
# puts '------------------------'
# print_values(reverse_list_iterative(node))

#print_values(node)
#puts '------------------------'
#print_values(reverse_list_recursive(node))

node = LinkedListNode.new(0)
100.times do |index|
  node = LinkedListNode.new(index + 1, node)
end

stack = Stack.new

node1 = LinkedListNode.new(1)
node2 = LinkedListNode.new(2, node1)
node3 = LinkedListNode.new(3, node2)
node4 = LinkedListNode.new(4, node3)
node5 = LinkedListNode.new(5, node4)
node6 = LinkedListNode.new(6, node5)
node7 = LinkedListNode.new(7, node6)
node8 = LinkedListNode.new(8, node7)
node9 = LinkedListNode.new(9, node8)
node10 = LinkedListNode.new(10, node9)
node5.next_node = node10

reverse = reverse_list_mutation(node3)
print_values(reverse)