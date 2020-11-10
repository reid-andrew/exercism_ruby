class Bob
  class << self
    def hey(remark)
      remark = remark.strip

      return "Calm down, I know what I'm doing!" if yell?(remark) &&
                                                    question?(remark) &&
                                                    letters?(remark)

      return "Whoa, chill out!" if yell?(remark) &&
                                   letters?(remark)

      return "Sure." if question?(remark)

      return "Fine. Be that way!" if !letters?(remark) &&
                                      remark.count("0-9") == 0

      "Whatever."
    end

    def letters?(remark)
      remark.count("a-zA-Z") > 0
    end

    def question?(remark)
      remark[-1] == "?"
    end

    def yell?(remark)
      remark == remark.upcase
    end
  end
end
