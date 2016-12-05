def all_unique_characters?(string)
  data = {}
  string.length.times do |i|
    if data[string[i]]
      return false
    else
      data[string[i]] = true
    end
  end
  return true
end

puts all_unique_characters?("melissa")
puts all_unique_characters?("dave")
puts all_unique_characters?("dave no bc")
