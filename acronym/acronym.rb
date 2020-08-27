class Acronym
  class << self
    def abbreviate(string)
      split_string = string.split(/[\s,-]/)
      split_string.map { |word| word[0].upcase if word =~ /[[:alpha:]]/}.join
    end
  end
end
