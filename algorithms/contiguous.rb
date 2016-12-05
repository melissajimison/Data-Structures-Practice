def contiguous(arrays)
  arrays.each do |array|
    array.sort!
  end
  main_counter = 0
  arrays.each do |array|
    counter = 0
    prev = nil
    array.each do |num|
      if prev != nil
        if num == prev + 1
          counter += 1
        else
          counter = 0
        end
        if counter >= main_counter
          main_counter = counter
        end
      end
      prev = num
    end
  end
  return main_counter
end

puts contiguous([[12,3,4,54,43],[6,4,3,5,9,8,7,10,2], [2,3,7,5]])
puts contiguous([[12,1,3,4,2,54,43],[7,10,2], [2,3,7,5]])
puts contiguous([[7,10,2], [2,3,7,5],[12,1,3,4,2,54,43]])
puts contiguous([[7,10,2], [2,7,5],[12,1,4,54,43]])
