class Matrix
  attr_reader :rows,
              :columns

  def initialize(data)
    @rows ||= config_rows(data)
    @columns ||= config_columns(@rows)
  end

  def config_rows(data)
    output = []
    data.split("\n").each do |row|
      output << row.split(' ').map { |x| x.to_i}
    end
    output
  end

  def config_columns(rows)
    counter = 0
    output = []
    while counter < rows[0].size do
      column = []
      rows.each do |row|
        column << row[counter]
      end
      counter += 1
      output << column
    end
    output
  end

end
