class Phrase
  def initialize(phrase)
    @phrase = phrase.scan(/\w+/)
  end

  def word_count
    @phrase.reduce(Hash.new(0)) do |output, word|
      output[word.downcase] += 1
      output
   end
  end
end
