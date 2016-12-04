def rotate(string, n)
  n_rotations = n % string.length
  i = 0
  while i < n_rotations
    first = string[0]
    string = string[1..string.length]
    string[string.length] = first
    i += 1
  end
  string
end

rotate("melissa", 103)
rotate("david", 37)
