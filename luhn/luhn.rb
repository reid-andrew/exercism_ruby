class Luhn
  def self.valid?(number)
    split_number = number.reverse.gsub(' ', '').split(//)
    return false if split_number.length <= 1

    return false if chars_included?(split_number)

    total = double_number(split_number).sum
    return false if total % 10 != 0

    true
  end

  def self.chars_included?(numbers)
    numbers.any? { |char| ('a'..'z').include? char.downcase }
  end

  def self.double_number(numbers)
    numbers.each_with_index.map do |digit, index|
      digit = digit.to_i
      digit = index.odd? ? digit *= 2 : digit
      digit = digit - 9 if digit > 9
      digit
    end
  end
end
