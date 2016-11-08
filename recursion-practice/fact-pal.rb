def fact(n)
  return 1 if n == 0
  n * fact(n-1)
end

def pal(s)
  return true if s.length <= 1
	return false if s[0] != s[-1]
	pal(s[1..-2])
end
