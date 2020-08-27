class Acronym
  class << self
    def abbreviate(string)
      output = ''
      split_string = string.split(/[\s,-]/)
      split_string.each do |word|
        output += word[0].upcase if word =~ /[[:alpha:]]/
      end
      output
    end
  end
end
