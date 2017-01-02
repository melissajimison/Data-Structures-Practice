def intertion_sort(array)
  return array if array.size <= 1
  for i in 1..array.length - 1
    element = array[i]
    j = i
    while j > 0 && array[j-1] > element
      array[j] = array[j-1]
      j = j - 1
    end
    array[j] = element
  end
  array
end
puts "the result #{intertion_sort([7,4,43,54,6,6,3,235,76,8,35])}"
