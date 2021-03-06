class School
  def initialize
    @enrolled = {}
  end

  def add(student, grade)
    if @enrolled[grade]
      @enrolled[grade] << student
      @enrolled[grade] = @enrolled[grade].sort
    else
      @enrolled[grade] = [student]
    end
  end

  def students(grade)
    return [] if !@enrolled[grade]

    @enrolled[grade]
  end

  def students_by_grade
    return [] if @enrolled == {}

    output = []
    @enrolled.sort_by {|key, value| key }.each do |grade, students|
      output << {grade: grade, students: students}
    end
    output
  end
end
