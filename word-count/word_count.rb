class Phrase
  def initialize(phrase)
    @phrase = phrase.gsub(',', ' ').gsub(/[^0-9a-z ]/i, '')
  end

  def word_count
    words = @phrase.split(' ')
    words.reduce({}) do |output, word|
      output[word.downcase] += 1 if output[word.downcase]

      output[word.downcase] = 1 if !output[word.downcase]

      output
   end
  end
end
