def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  iterations = 0

  swapped = true
  while swapped
    swapped = false # maybe this time, we won't find a swap
    for i in 0..list.size-2
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true # found a swap... keep going
        iterations += 1
      end
    end
  end
  puts iterations
  list
end
puts "the result #{bubble_sort([3, 4, 6, 6, 7, 8, 35, 43, 54, 76, 235])}"
