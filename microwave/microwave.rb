class Microwave
  def initialize(seconds)
    @seconds = seconds
  end

  def timer
    overflow_check(@seconds)
    @seconds < 100 ? under_100 : over_100
  end

  private

  def under_100
    minutes = @seconds / 60
    second = @seconds - (minutes * 60)

    "#{minutes < 10 ? "0#{minutes}" : "#{minutes}"}:#{second < 10 ? "0#{second}" : "#{second}"}"
  end

  def over_100
    first_two = @seconds < 999 ? "0#{@seconds.to_s[0]}" : "#{@seconds.to_s[0..1]}"
    "#{first_two}:#{@seconds.to_s[-2..-1]}"
  end

  def overflow_check(seconds)
    @seconds = @seconds - 60 + 100 if "#{@seconds.to_s[-2..-1]}".to_i > 60
  end
end
