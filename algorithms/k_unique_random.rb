
def k_random(array, k)
  if array == nil || array.length < k || array.length == 0
    puts "Asi nooooooo"
    return
  end
  final_array = []
  range = array.length-1
  
  while final_array.length < k
    random_index = Random.rand(range)

    puts "random_index===> #{random_index}"
    final_array.push(array[random_index])
    temp = array[random_index]
    array[random_index] = array[range]
    array[range] = temp
    range -= 1
    
  end
  
  final_array
  
end


puts k_random([1,5,6,7,8,9], 5)
puts k_random([1,5,6,7,8,9], 15)
