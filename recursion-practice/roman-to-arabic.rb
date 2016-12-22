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
  def reverter(roman, arabic = 0)
    symbols = roman.chars
    puts = "symbols: #{symbols}"
    return arabic if symbols.empty?
    CONVERSIONS.values.each do |symbol|
      puts = "symbol: #{symbols}"
      symbol = symbols.shift
      puts = "symbol.shift: #{symbols}"
      next_symbol = symbols.first
      puts = "next_symbol: #{next_symbol}"
      value = CONVERSIONS[symbol]
      puts = "value: #{value}"
      next_value = CONVERSIONS[next_symbol] || 0
      puts = "next_value: #{next_value}"

      if next_value > value
        value = value * -1
      end

      arabic = arabic + value
      puts = "arabic: #{arabic}"
      roman = symbols.join
      puts = "roman: #{roman}"
      puts
      puts
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
