def organize_balls(balls)
  i = 0
  last_organized = balls.length - 1
  first_organized = 0
  while i < last_organized
    puts "first_organized #{first_organized}"
    puts "last_organized #{last_organized}"
    # if balls[i] == 'B'
    #   temp = balls[last_organized]
    #   while temp == 'B'
    #     last_organized -= 1
    #     temp = balls[last_organized]
    #   end
    #   balls[last_organized] = balls[i]
    #   balls[i] = temp
    #   last_organized -= 1
    puts "balls[i] ===> #{balls[i]}"
    if balls[i] == 'R'
      temp = balls[i]
      balls[first_organized] = balls[i]
      balls[i] = temp
      puts "temp====>" + temp
      if balls[i] == 'R'
        i =+ 1
        first_organized =+ 1
      end
    end
    i += 1
    puts '+++++++++++'
    # puts balls
  end
  puts '========='
  balls
end

# puts organize_balls(['B', 'G', 'G' ,'R', 'B', 'G', 'G', 'B' ])
puts organize_balls(['R', 'R','R','R','R','G', 'G' ,'R', 'B', 'G', 'G', 'R' ])
