class Grains
  class << self
    def square(num)
      raise ArgumentError.new(
        'Invalid square'
      ) if num < 1 || num > 64

      board[num]
    end

    def total
      board.sum { |key, value| value }
    end

    def board(counter = 1, grains = 1)
      board = Hash.new
      while counter < 65
        board[counter] = grains
        counter += 1
        grains *= 2
      end
      board
    end
  end
end
