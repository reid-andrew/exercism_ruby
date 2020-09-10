class Scrabble
  def self.score(word)
    Scrabble.new(word).score
  end

  def initialize(word)
    @word = word
  end

  def score
    return 0 if !@word || @word.scan(/\w+/).size == 0

    @word.chars.map.sum do |letter|
      values[letter.upcase] ? values[letter.upcase] : 1
    end
  end

  def values
    {
      "D" => 2, "G" => 2,
      "B" => 3, "C" => 3, "M" => 3, "P" => 3,
      "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4,
      "K" => 5,
      "J" => 8, "X" => 8,
      "Q" => 10, "Z" => 10
    }
  end
end
