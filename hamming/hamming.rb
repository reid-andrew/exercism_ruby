class Hamming
  class << self
    def compute(string1, string2)
      raise ArgumentError.new if string1.length != string2.length

      return 0 if string1 == string2

      count = 0

      string1.chars.each_with_index do |val, index|
        count += 1 if val != string2.chars[index]
      end
      count
    end
  end
end
