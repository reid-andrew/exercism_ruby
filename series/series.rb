class Series
  def initialize(numbers)
    @numbers = numbers.chars
  end

  def slices(value)
    raise ArgumentError.new if value > @numbers.size

    @numbers.each_cons(value).map(&:join)
  end
end
