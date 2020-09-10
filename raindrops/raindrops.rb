class Raindrops
  def self.convert(value)
    output = ""
    output += "Pling" if value % 3 == 0
    output += "Plang" if value % 5 == 0
    output += "Plong" if value % 7 == 0
    output += value.to_s if output == ""
    output
  end
end
