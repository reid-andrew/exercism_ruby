class Brackets
  class << self
    def paired?(string)
      split_string = remove_vals(string.split(''))
      return false if !find_pair?(split_string)

      true
    end

    def find_pair?(array, index = 0)
      return true if array.length == 0

      test_value = array[index]
      found_index = array.find_index(convert(test_value))
      if !found_index
        return false
      elsif found_index - index > 1
        find_pair?(array, index + 1)
      else
        array.delete_at(found_index)
        array.delete_at(index)
        find_pair?(array)
      end
    end

    def remove_vals(array)
      array.select do |value|
        ['[', '{', '(', ')', '}', ']'].include?(value)
      end
    end

    def convert(value)
      return ']' if value == '['

      return '}' if value == '{'

      return ')' if value == '('
    end
  end
end
