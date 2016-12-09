def quick_sort(array)
  puts "theArray #{array}"
  puts
  return array if array.length <= 1
  pivot = array.sample
  low, high = [], []
  array.each do |num|
    if num > pivot
      high.push(num)
    elsif num < pivot
      low.push(num)
    end
  end
  high = quick_sort(high)
  low = quick_sort(low)
  return low + [pivot] + high
end
puts "the result #{quick_sort([7,4,43,54,6,6,3,235,76,8,35])}"
