# Quick Example of a Self Referential Data Structure in Ruby
# NODE -> contains a value and a pointer to (next_node)
# LinkedList -> This class holds the linked list functions - adding a node, traversing and displaying the linked list

class Node
   attr_accessor :value, :next_node

   def initialize(val,next_in_line=nil)
     @value = val
     @next_node = next_in_line
     #puts "Initialized a Node with value:  " + value.to_s
   end
end

class LinkedList
  attr_accessor :head, :size
  def initialize
    @head = nil
    @size = 0
  end

  def add_to_the_end(value)
    if @size == 0
       @head = Node.new(value,nil)
       @size += 1
     else
        # Traverse to the end of the list
      # And insert a new node over there with the specified value
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(value,nil)
      @size += 1
    end
    self
  end

  def add_to_the_beginning(value)
    old_head = @head
    @head = Node.new(value,old_head)
    @size += 1
    self
  end

  def remove(val)
    return nil if @size == 0
    current = @head
    previous = nil

    while current != nil
      if @current.value == val #found
        if previous == nil #found in the head
          @head = current.next_node
          @size -= 1
        else #found in the middle or end
          previous.next_node = current.next_node
          @size -= 1
        end
      else
        previous = current
        current = current.next_node
    end
  end

  def remove_first(n)
    current = @head
    i = n
    while current != nil && i > 0
      current = current.next_node
      i -= 1
    end

    @head = current
  end

  def remove_all
    current = @head
    while current != nil
      current.value = nil
      current = current.next_value
    end
    @head= nil
  end

  def display
    # Traverse through the list till you hit the "nil" at the end
    current = @head
    while current.next_node != nil
      print current.value.to_s, " "
      current = current.next_node
    end
  end

  def include?(key)
    current = @head
    while current != nil
      return true if current.value == key
      current = current.next_node
    end
    return false
  end

  def find_nth_from_end(n)
    return nil if @size <= position
    total = @size - n #find the count from head of the node we want to retrieve
    current = @head
    i = 0
    while i < total - 1
      current = current.next_node
      i += 1
    end
    return current
  end
  
  def find_nth_from_end_no_size(n)
     p1 = @head
     p2 = @head
  
    i = 0
    while i < n do
      return nil if p1 != nil
      p1 = p1.next 
      i += 1
    end
     
   while (p1 != nil)
     p1 = p1.next
     p2 = p2.next
   end
   return p2
  end

  def middle_node
   fast = slow = @head
   while fast && fast.next_node
   ##until the end of linked list is reached
      fast = fast.next_node.next_node
      slow = slow.next_node
   end
   return slow
  end

  def middle_node_
    current = @head
    middle = @size / 2
    i = 0
    while i >= middle
      current = current.next_node
      i += 1
    end
    return current
  end

  def has_cycle?
    fast = slow = @head
    while fast != nil
      return false if fast.next = nil #do I even need this line?
      fast = fast.next_node.next_node
      slow = slow.next_node
      return true if fast = slow
    end
    return false
  end

  def size
    return @size
  end

  def max
    return "This list in empty" if @size == 0
    max = @head.value
    current = @head.next_node
    while current != nil
      max = current.value if current.value > max
      current = current.next_node
    end
    return max
  end

  def sort
    #look if a head is larger, asing the node to the
    @size.times do |i|

    before_max = nil
    current = @head
    max = @head

      (@size-i-1).times do
        if current.next_node != nil && current.next_node.value > max.value
          before_max = current
          max = current.next_node
        end
        current = current.next_node
      end

      if max != current
        if before_max == nil
          @head = @head.next_node
        else
          before_max.next_node = max.next_node
        end

      end
        max.next_node = current.next_node
        max.next_node = max
      end
  end

  def reverse
    current = @head
    #keep track of the previos is the key, and ultimaly the end of the list
    previous = nil
    while current != nil
       temp = current.next_node #Swap using temp
       current.next_node = previous
       previous = current
       current = temp #Move to next
    end
    @head = previous
  end

  def duplicate(head_node)
    current = head_node
    #keep track of the previos is the key
    previous = nil
    while current != nil
      if previous == nil
        #set the head
        @head = Node.new(head_node.value)
        previous = @head
      else
        #rest of iterations
        previous.next_node = Node.new(current.value)
        previous = current
      end
      current = current.next
    end
    return @head
  end

end
