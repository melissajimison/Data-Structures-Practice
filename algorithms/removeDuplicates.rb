def remove_next_consecutive_duplicates_in_place(string)
i = 1
while i < string.length
  if string[i - 1] == string[i]
    string[i..-1] = string[i+1..-1]
  end
  i += 1
end
return string
end

puts remove_next_consecutive_duplicates_in_place('mmelilssasmelsmsllee')

def remove_consecutives_duplicates_not_extra_storage(string)
  for i in 0..string.length
    j = i + 1
    while j < string.length
      if j == string.length && string[i] == string[j]
        string = string[0..j-2]
      elsif j == string.length - 1 && string[i] == string[j]
        string = string[0..j-1]
      elsif string[i] == string[j]
        string[j..-1] = string[j+1..-1]
      end
      j += 1
    end
  end
  return string
end
puts remove_consecutive_duplicates_not_extra_storage('melilssasmmmmelsmsllee')
