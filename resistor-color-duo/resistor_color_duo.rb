class ResistorColorDuo
  class << self
    def value(array)
      mapping[array[0].to_sym] * 10 + mapping[array[1].to_sym]
    end

    def mapping
      {
        black: 0,
        brown: 1,
        red: 2,
        orange: 3,
        yellow: 4,
        green: 5,
        blue: 6,
        violet: 7,
        grey: 8,
        white: 9
      }
    end
  end
end
