class Robot
  @@names = []

  def self.forget
    @@names = []
  end

  attr_reader :name

  def initialize
    @name ||= create_name
  end

  def create_name
    name = "#{('A'..'Z').to_a.sample}#{('A'..'Z').to_a.sample}#{rand(100..999).to_s}"
    create_name if @@names.include?(name)

    @@names << name
    name
  end

  def reset
    @name = create_name
  end
end
