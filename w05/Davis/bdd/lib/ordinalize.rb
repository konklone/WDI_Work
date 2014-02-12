class Ordinalize
  def self.convert(num)
    result = num.to_s

    # special cases for 10's
    # if 2nd to last char is 1, add "th"
    result += if result[-2] == "1"
      "th"
    # special cases for ending in 1 2 3 
    elsif result[-1] == "1"
      "st"
    elsif result[-1] == "2"
      "nd"
    elsif result[-1] == "3"
      "rd"
    # everything else is "th"
    else
      "th"
    end
  end
end
