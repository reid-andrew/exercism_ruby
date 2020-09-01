class Change
  class << self
    def generate(coins, amount)
      change = []
      while amount > 0
        change_coin = coins.reverse.find { |coin| coin <= amount }
        change << change_coin
        amount = amount - change_coin
      end
      change.sort
    end
  end
end
