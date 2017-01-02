def merge_sort(array)
  return array if array.length == 1
  middle = array.length / 2
  conquer(merge_sort(array[0...middle]), merge_sort(array[middle..-1]))
end

def conquer(left, right)
  sorted = []
   until left.empty? || right.empty?
     if left.first <= right.first
       sorted.push(left.shift)
     else
       sorted.push(right.shift)
     end
   end
   sorted + left + right
end
puts "the result #{merge_sort([7,4,43,54,6,6,3,235,76,8,35])}"
