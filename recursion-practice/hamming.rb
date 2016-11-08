class Hamming
  def self.compute(entry1,entry2, score = 0)
    raise ArgumentError.new("Both entries have to have same number of characters") if entry1.length != entry2.length

    return score if entry1.length == 0 || entry2.length == 0

    score += 1 if entry1[0] != entry2[0]

    compute(entry1[1..-1],entry2[1..-1], score)

  end
end
