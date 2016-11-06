CONVERSIONS = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000,
}

class Roman
  def reverter_recursive(roman, arabic = 0)
    symbols = roman.chars
    return arabic if symbols.empty?
    CONVERSIONS.values.each do |symbol|
      symbol = symbols.shift
      next_symbol = symbols.first
      value = CONVERSIONS[symbol]
      next_value = CONVERSIONS[next_symbol] || 0

      if next_value > value
        value = value * -1
      end

      arabic = arabic + value
      roman = symbols.join

      return reverter(roman, arabic)
    end
  end

  def reverter_itirative(roman)
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
end
