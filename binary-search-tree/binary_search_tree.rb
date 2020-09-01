class Bst
  attr_reader :right, :left

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  def data
    @value
  end

  def insert(value, node = self)
    if value > @value
      if !@right
        @right = Bst.new(value)
      else
        @right.insert(value, @right)
      end
    else
      if !@left
        @left = Bst.new(value)
      else
        @left.insert(value, @left)
      end
    end
  end
end
