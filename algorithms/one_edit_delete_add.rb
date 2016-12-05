def one_edit_delete_add(str_a, str_b)
  str_a = str_a.chars
  str_b = str_b.chars
  counter = 0

  if str_a.length != str_b.length
    if str_a.length > str_b.length
      str_a, str_b = str_b, str_a
    end

    if str_b.length >= str_a.length + 2
      return false
    end
    i = 0
    while i < str_a.length do
      if str_a[i] != str_b[i]
        counter += 1
        next_letter = i + 1
        if str_a[i..-1] == str_b[next_letter..-1]
          return true
        else
          return false
        end
      end
      i += 1
    end
    return true
  else
    data = {}
    str_a.length.times do |i|
      data[i] = str_a[i]
    end

    str_b.length.times do |i|
      if data[i] != str_b[i]
        counter += 1
      end
      return false if counter > 1
    end
    return true

  end
end

puts "expected #{one_edit_delete_add("melisa", "meliso")} to be true"
puts "expected #{one_edit_delete_add("melisa", "mejiso")} to be false"
puts "expected #{one_edit_delete_add("melisa", "meisa")} to be true"
puts "expected #{one_edit_delete_add("melisa", "meise")} to be false"
puts "expected #{one_edit_delete_add("melisa", "melisaj")} to be true"
puts "expected #{one_edit_delete_add("melisa", "melisaji")} to be false"
