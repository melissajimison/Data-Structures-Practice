def pyr(n)
  n.odd? ? counter = 1 : counter = 0
  while counter <= n do
    puts " " * ((n-counter)/2) + ('#' * counter)
    counter += 2
  end
end

pyr(10)
pyr(21)
