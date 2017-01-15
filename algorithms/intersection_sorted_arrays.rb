def intersection_sorted_arrays(arr_one, arr_two)
  final_array = []
  i = 0
  j = 0
  while i < arr_one.length &&  j < arr_two.length
    if arr_one[i] == arr_two[j]
      final_array.push(arr_one[i], arr_two[j])
      j +=1
      i +=1
     elsif  arr_one[i] > arr_two[j]
      j += 1
     else
      i += 1
     end
  end
  return final_array
end

puts intersection_sorted_arrays([2,3,4,5,6,7,8,8,9, 10],[1,5,7,9,10,10])
