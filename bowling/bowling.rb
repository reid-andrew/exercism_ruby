class Game

  attr_reader :score

  def initialize
    @score = 0
    @prior_one = 0
    @prior_two = 0
    @rolls = 0
    @strikes = 0
  end

  def roll(pins)
    validate_score(pins)
    @rolls += 1
    @strikes += 1 if pins == 10
    @score += pins
    if prior_spare?(@prior_one, @prior_two) && @rolls < 20
      @score += pins
    elsif prior_strike?(@prior_one, @prior_two) && @rolls < 20 && @strikes <= 11
      @score += pins
      if double_prior_strike?(@prior_one, @prior_two) && @strikes < 11
        @score += pins
      end
    end
    @prior_two = @prior_one
    @prior_one = pins
  end

  def prior_strike?(roll_one, roll_two)
    roll_one == 10 || roll_two == 10
  end

  def double_prior_strike?(roll_one, roll_two)
    roll_one == 10 && roll_two == 10
  end

  def prior_spare?(roll_one, roll_two)
    roll_one + roll_two == 10
  end

  def validate_score(pins)
    raise BowlingError unless (0..10).include?(pins)
  end

  class BowlingError < StandardError
  end
end
