class PerfectNumber
  class << self
    def classify(value)
      raise RuntimeError if value < 1

      return 'deficient' if find_factors(value).sum < value

      return 'abundant' if find_factors(value).sum > value

      'perfect'
    end

    private

    def find_factors(number)
      counter = 1
      output = []
      while counter < number
        output << counter if number % counter == 0
        counter += 1
      end
      output
    end
  end
end
