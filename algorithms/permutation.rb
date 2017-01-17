def perm(string, i = 0)
  #error handling
  return string if string.length == 0

  #base case
  if i == string.size-1
    puts string
  end

  for j in i..(string.size-1) do
    string[i], string[j] = string[j], string[i]
    perm(string, i + 1)
    string[i], string[j] = string[j], string[i]
  end
  return
end

def per_it(array)
  if array.length == 2
    array[0], array[1] = array[1], array[0]
    return array
  else
    for i in 0..array.length
      puts i
      subarray = array[0...i] + array[i+1..-1]
      return [array[i]] + per_it(subarray)
    end
  end

end

puts "#{per_it([1,2,3,4,5,6,7,8])}"
# puts "#{perm('123')}"
