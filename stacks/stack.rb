class Stack
  def initialize
    @list = []
  end

  def self.pop
    popped = @list[0]
    @list = @list[1..-1]
    return popped
  end

  def self.push(element):
    @list = @list + [element]
  end

  def self.top
    @list[0]
  end

  def self.isEmpty
    @list.length == 0
  end

  def reverse_recursive(array, new_array = nil)
    return new_array if array.length == 0
    element = array.pop()
    if new_element == undefined
      new_element = ''
      new_element = new_element.push(element)
      reverseRecursive(array, new_element)
    end
  end

  def reverse(string):
    reversed_string = ''
    stack = Stack.new
    for i in 0..string.length
      stack.push(string[i])
    end
    for i in 0..string.length
      reversed_string += stack.pop
    end
    reversed_string
  end

end
