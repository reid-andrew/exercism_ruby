class Bob
  def self.hey(remark)
    remark = remark.strip
    
    return "Calm down, I know what I'm doing!" if remark == remark.upcase && remark[-1] == "?" && remark.count("a-zA-Z") > 0

    return "Whoa, chill out!" if remark == remark.upcase && remark.count("a-zA-Z") > 0

    return "Sure." if remark[-1] == "?"

    return "Fine. Be that way!" if remark.count("a-zA-Z") == 0 && remark.count("0-9") == 0

    "Whatever."
  end
end
