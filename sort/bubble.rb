def bubble_sort(array)
  return array if array.size <= 1

  swapped = true
  while swapped
    swapped = false # maybe this time, we won't find a swap
    for i in 0..array.size-2
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i] # swap values
        swapped = true # found a swap... keep going
        iterations += 1
      end
    end
  end
  array
end
puts "the result #{bubble_sort([7,4,43,54,6,6,3,235,76,8,35])}"
