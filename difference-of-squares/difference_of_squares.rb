class Squares
  def initialize(num)
    @numbers = (1..num).to_a
  end

  def square_of_sum
    @numbers.sum ** 2
  end

  def sum_of_squares
    @numbers.map { |num| num**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
