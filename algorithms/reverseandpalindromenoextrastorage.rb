def palindrome(string)
  i = 0
  j = string.length - 1
  middle = string.length / 2

  while i <= middle || j >= middle do
    if string[i] != string[j]
      return "false"
    else
      i += 1
      j -= 1
    end
  end
  return "true"
end

puts palindrome('melissaassilem')
puts palindrome('melissassilem')
puts palindrome('melissassilemdavid')

def reverse_in_place(string)
  i = 0
  j = string.length - 1
  middle = string.length / 2

  while i <= middle || j >= middle do
    string[i], string[j] = string[j], string[i]
    i += 1
    j -= 1
  end
  return string
end

puts reverse_in_place("melissa")
