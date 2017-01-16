class TreeNode
   attr_accessor :value, :left, :right, :flag, :center

   def initialize(val, flag)
     @value = val
     @left = nil
     @right = nil
     @center = nil
     @flag = flag
   end
end

def search(node)
  return if node == nil
  search(node.left)
  return node.inspect if node.flag == false
  search(node.right)
end

root3 = TreeNode.new("email", true)
root3.left = TreeNode.new("flight", true)
root3.right = TreeNode.new("hotel", false)
root3.left.left = TreeNode.new("airtype", true)
root3.left.left.left = TreeNode.new("food", true)
root3.left.left.center = TreeNode.new("seat", true)
root3.left.left.right = TreeNode.new("entretement", true)
root3.left.left.center.left = TreeNode.new("seat size", false)

puts "#{search(root3)}"
