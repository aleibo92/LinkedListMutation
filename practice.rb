class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
  end
class Stack
    attr_reader :data

    def initialize
        @top_node = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        @top_node = LinkedListNode.new(value, @top_node)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
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


def reverse_list(list)
  previous = nil
  # set current_head to node2
  curr = list
  nex = nil
    
  while (curr!=nil)
    next_node = curr.next_node
    curr.next_node = previous
    previous = curr
    curr = next_node
     
  end
  previous
end

node = LinkedListNode.new(0)

100.times do |index|
  node = LinkedListNode.new(index + 1, node)
end

print_values(reverse_list(node))
