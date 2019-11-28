class Onsite
  attr_reader :diccionary, :string
  def initialize(diccionary, string)
    @diccionary = diccionary
    @string = string
  end

  def contain_word
    array = []
    for i in 0..@string.length
      puts i
      if @diccionary[string[0..i]]
        puts string[0..i]
        array.push(string[0..i])
        if @diccionary[string[i + 1..-1]]
          puts string[i + 1..-1]
          array.push(string[i + 1..-1])
        end
      end
    end
    return array
  end

end

diccionary_test = {
  "i" => true,
  "love" => true,
  "david" => true,
  "melissa" => true
}
white_boarding = Onsite.new( diccionary_test, "lovedavid")
puts "#{white_boarding.contain_word}"
white_boarding2 = Onsite.new( diccionary_test, "lovedavidmelissa")
puts "#{white_boarding2.contain_word}"
