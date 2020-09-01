class Bst
  attr_reader :data, :right, :left

  def initialize(data, left = nil, right = nil)
    @data = data
    @left = left
    @right = right
  end

  def insert(value, node = self)
    value > @data ? search_right(value) : search_left(value)
  end

  def search_right(value)
    @right.nil? ? @right = Bst.new(value) : @right.insert(value, @right)
  end

  def search_left(value)
    @left.nil? ? @left = Bst.new(value) : @left.insert(value, @left)
  end

  def each(&block)
    return enum_for(:each) unless block_given?

    @left.each(&block) if @left
    block.call(data)
    @right.each(&block) if @right
  end
end
