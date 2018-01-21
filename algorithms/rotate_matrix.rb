def rotate_matrix?(matrix)
  puts matrix
  puts "******************"
  n = matrix.length
  puts "n===>", n
  layer = 0
  while layer < n/2
    first = layer
    last = n - 1 - layer
    i = 0
    puts "i=====>", i
    while i < last
      puts "first====>", first
      puts "layer====>", layer
      puts "last======>", last
      puts "+++++++++++++++++++"
      offset = i - first
      puts "offset====>", offset
      ##save Top
      top = matrix[first][i]
      puts "saved_top====>", top

      #left -> top
      matrix[first][i] = matrix[last-offset][first]
      puts "matrix[last-offset][first] ", matrix[last-offset][first]
      #bottom -> left
      matrix[last-offset][first] = matrix[last][last-offset]
      puts "matrix[last][last-offset] ", matrix[last][last-offset]
      #right -> bottom
      matrix[last][last-offset] = matrix[i][last]
      puts "matrix[i][last] ", matrix[i][last]
      #top -> right
      matrix[i][last] = top
      puts matrix
      i = i + 1
    end
    layer = layer + 1
  end
  puts "------------------------"
  puts matrix
  matrix
end
a = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
rotate_matrix?(a)
