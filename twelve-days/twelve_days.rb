class TwelveDays
  def self.song
    counter = 1
    output = ""
    while counter <= 12
      output += iterate(counter)
      counter += 1
    end
    output
  end

  def self.iterate(number)
    "#{on_the(number)}#{countdown(number)}#{carriage_return(number)}"
  end

  def self.on_the(number)
    "On the #{ordinalize[number]} day of Christmas my true love gave to me: "
  end

  def self.ordinalize
    {
      1 => 'first',
      2 => 'second',
      3 => 'third',
      4 => 'fourth',
      5 => 'fifth',
      6 => 'sixth',
      7 => 'seventh',
      8 => 'eighth',
      9 => 'ninth',
      10 => 'tenth',
      11 => 'eleventh',
      12 => 'twelfth'
    }
  end

  def self.gift
    {
      1 => 'and a Partridge in a Pear Tree.',
      2 => 'two Turtle Doves, ',
      3 => 'three French Hens, ',
      4 => 'four Calling Birds, ',
      5 => 'five Gold Rings, ',
      6 => 'six Geese-a-Laying, ',
      7 => 'seven Swans-a-Swimming, ',
      8 => 'eight Maids-a-Milking, ',
      9 => 'nine Ladies Dancing, ',
      10 => 'ten Lords-a-Leaping, ',
      11 => 'eleven Pipers Piping, ',
      12 => 'twelve Drummers Drumming, '
    }
  end

  def self.countdown(number)
    return "a Partridge in a Pear Tree." if number == 1
    output = ""

    while (number > 0) do
      output += gift[number]
      number -= 1
    end
    output
  end

  def self.carriage_return(number)
    return "\n" + "\n" if number != 12

    "\n"
  end
end
