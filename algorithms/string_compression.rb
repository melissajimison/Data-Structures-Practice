def string_compression(string)
  counter = 0
  compresed = ""
  for i in 0..string.length
    counter += 1
    if string[i] != string[i + 1] 
      compresed += string[i] + counter.to_s
      counter = 0
    end
  end
  compresed
end

puts string_compression("aaaaaadddddtggg")
