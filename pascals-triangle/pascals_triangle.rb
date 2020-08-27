class Triangle
  attr_reader :rows

  def initialize(row_count)
    @rows ||= create_rows(row_count - 1)
  end

  def create_rows(row_count, triangle = [[1]])
    while row_count > 0
      triangle << add_row(triangle)
      row_count -= 1
    end
    triangle
  end

  def add_row(triangle, new_row = [])
    last_row = format_last_row(triangle)
    last_row.each_with_index do |value, index|
      add_value(last_row, value, index, new_row)
    end
    new_row
  end

  def format_last_row(triangle)
    last_row = [0]
    last_row << triangle.last
    last_row.flatten
  end

  def add_value(last_row, value, index, new_row)
    next_val = last_row[index + 1]
    next_val = 0 if !next_val
    new_row << value + next_val
  end
end
