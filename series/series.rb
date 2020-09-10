class Series
  def initialize(numbers)
    @numbers = numbers.split(//)
  end

  def slices(value)
    raise ArgumentError.new if value > @numbers.size

    output = @numbers.each_with_index.map do |number, index|
      build_string(index, value)
    end
    output.select { |number| !number.nil? }
  end

  def build_string(index, value)
    string = ""
    value.times do
      string += @numbers[index] if @numbers[index]
      index += 1
    end
    string if string.size == value
  end
end
