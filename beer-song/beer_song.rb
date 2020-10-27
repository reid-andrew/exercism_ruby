class BeerSong
  class << self
    def recite(bottles, verses)
      output = ""
      while verses > 0
        output += "\n" if output != ""
        output += "#{line_one(bottles)}\n#{line_two(bottles)}\n"
        verses -= 1
        bottles -= 1
      end
      output
    end

    def line_one(bottles)
      return "No more bottles of beer on the wall, no more bottles of beer." if bottles == 0

      "#{bottles} #{pluralize(bottles)} of beer on the wall, #{bottles} #{pluralize(bottles)} of beer."
    end

    def line_two(bottles)
      return "Take it down and pass it around, no more bottles of beer on the wall." if bottles == 1

      return "Go to the store and buy some more, 99 bottles of beer on the wall." if bottles == 0

      "Take one down and pass it around, #{bottles - 1} #{pluralize(bottles - 1)} of beer on the wall."
    end

    def pluralize(bottles)
      return 'bottles' if bottles > 1
      
      'bottle'
    end
  end
end
