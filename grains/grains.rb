class Grains
  def self.square(num)
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
end
