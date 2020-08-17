class School
  def initialize
    @enrolled = {}
  end

  def students(grade)
    return [] if !@enrolled[grade]

    @enrolled[grade]
  end
end
