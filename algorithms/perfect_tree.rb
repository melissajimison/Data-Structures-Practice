class TreeNode
   attr_accessor :value, :left, :right

   def initialize(val)
     @value = val
     @left = nil
     @right = nil
   end
end

def perfect?(root)
  parent = [root]
  children = []
  while parent != []
    parent.each do |node|
      if (node.left != nil && node.right != nil)
        children.push(node.left)
        children.push(node.right)
      elsif node.left == nil && node.right == nil
        children.push(nil)
        children.push(nil)
      else
        return false
      end
    end
    return false if parent.include?(nil)
    parent = children
    children = []
  end
  return true
end


root3 = TreeNode.new("-")
root3.left = TreeNode.new("*")
root3.left.right = TreeNode.new("+")
root3.left.left = TreeNode.new("4")
root3.left.right.left = TreeNode.new("3")
root3.left.right.right = TreeNode.new("2")
root3.right = TreeNode.new("%")
root3.right.left = TreeNode.new("10")
root3.right.right = TreeNode.new("5")
root3.right.right.left = TreeNode.new("5")

puts perfect?(root3)

root2 = TreeNode.new("-")
root2.left = TreeNode.new("*")
root2.right = TreeNode.new("%")
root2.left.left = TreeNode.new("4")
# root2.left.left.left = TreeNode.new("3")
# root2.left.left.right = TreeNode.new("2")
root2.left.right = TreeNode.new("+")
# root2.left.right.left = TreeNode.new("3")
# root2.left.right.right = TreeNode.new("2")
root2.right.left = TreeNode.new("10")
root2.right.right = TreeNode.new("5")
# root2.right.left.left = TreeNode.new("5")
# root2.right.left.right = TreeNode.new("5")
# root2.right.right.left = TreeNode.new("5")
# root2.right.right.right = TreeNode.new("5")

puts perfect?(root2)
