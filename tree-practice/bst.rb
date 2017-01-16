class BstNode
   attr_accessor :value, :left, :right

   def initialize(val)
     @value = val
     @left = nil
     @right = nil
   end

   def search_recursively(val, node)
    return if node == nil
    if node.value == val
      return true
    elsif val < node.value
      return search_recursively(val, node.left)
    else  # val > node.value
      return search_recursively(val, node.right)
    end
  end

  def search_iteratively(val, node)
    current_node = node
    while current_node != nil
      if val == current_node.value
        return true
      elsif val < current_node.value
        current_node = current_node.left
      else  # val > current_node.value
        current_node = current_node.right
      end
    end

    return false
  end

  def insert(val)

  end

  def delete(val)

  end
end
