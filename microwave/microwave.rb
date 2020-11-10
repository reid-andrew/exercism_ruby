class Microwave
  def initialize(seconds)
    @seconds = seconds
  end

  def timer
    if @seconds < 100
      minutes = @seconds / 60
      minute_output = minutes < 10 ? "0#{minutes}" : "#{minutes}"
      remainder = @seconds - (minutes * 60)
      remainder_output = remainder < 10 ? "0#{remainder}" : "#{remainder}"

      "#{minute_output}:#{remainder_output}"
    else
      sec_string = @seconds.to_s
      last_two = "#{sec_string[-2]}#{sec_string[-1]}".to_i
      if last_two > 60
        @seconds = @seconds - 60 + 100
        sec_string = @seconds.to_s
      end
      first_two = @seconds < 999 ? "0#{sec_string[0]}" : "#{sec_string[0]}#{sec_string[1]}"
      "#{first_two}:#{sec_string[-2]}#{sec_string[-1]}"
    end
  end
end
