def fact(n)
  return 1 if n == 0
  n * fact(n-1)
end

def pal(s)
  return true if s.length <= 1
	return false if s[0] != s[-1]
	pal(s[1..-2])
end

class Roman
  SYMBOL_VALUES = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000,
  }

  def self.reverter(roman, arabic = 0)
    symbols = roman.chars
    return arabic if symbols.empty?
    SYMBOL_VALUES.values.each do |symbol|
      symbol = symbols.shift
      next_symbol = symbols.first
      value = SYMBOL_VALUES[symbol]
      next_value = SYMBOL_VALUES[next_symbol] || 0

      if next_value > value
        value = value * -1
      end

      arabic = arabic + value
      roman = symbols.join

      return reverter(roman, arabic)
    end
  end
end

CONVERSIONS = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000,
}

class Roman2
  def reverter(roman)
    romans = roman.chars

    arabic = 0
    until romans.empty?
      one_roman = romans.shift
      next_roman = romans.first

      value = CONVERSIONS[one_roman]
      next_value = CONVERSIONS[next_roman] || 0

      value *= -1 if next_value > value
      arabic += value
    end
    arabic
  end
