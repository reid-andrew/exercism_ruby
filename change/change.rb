class Change
  def self.generate(coins, amount)
    change = Change.new(coins, amount)
    change.make_change
  end

  def initialize(coins, amount)
    @coins = coins
    @amount = amount
    @options = []
    @short = nil
  end

  def make_change
    coins = valid_coins
    find_options(coins, @amount)
    @options.find { |change| change.length == @short }
  end

  def valid_coins
    @coins.select { |coin| coin <= @amount }
  end

  def find_options(coins, amount)
    change = []
    available = coins.sort.reverse
    while amount > 0
      change_coin = available.find { |coin| coin <= amount }
      break if !change_coin
      change << change_coin
      amount = amount - change_coin
    end
    if change.sum == @amount
      @options << change.sort
      @short = @options.last.length if @options.last && !@short || @short > @options.last.length
    end
    available.shift
    if available.length >= 1
      find_options(available, @amount)
    end
  end
end
