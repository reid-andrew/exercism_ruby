class Grains
  def self.square(num)
    raise ArgumentError.new(
      'Invalid square'
    ) if num < 1 || num > 64

    board[num]
  end

  def self.board
    board ||= Hash.new
    counter = 1
    grains = 1
    while counter < 65
      board[counter] = grains
      counter += 1
      grains *= 2
    end
    board
  end

  def self.total
    board.sum { |key, value| value }
  end
end
