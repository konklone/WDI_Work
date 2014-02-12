class Ordinalize
  def self.convert(num)
    @ordinated = String.new

    if num == 1
      @ordinated = num.to_s + "st"
    elsif num == 2
      @ordinated = num.to_s + "nd"
    elsif num == 3
      @ordinated = num.to_s + "rd"
    elsif num == 4
      @ordinated = num.to_s + "th"
    elsif num == 10
      @ordinated = num.to_s + "th"
    elsif num == 11
      @ordinated = num.to_s + "th"      
    elsif num == 12
      @ordinated = num.to_s + "th"
    elsif num == 13
      @ordinated = num.to_s + "th"
    elsif num == 14
      @ordinated = num.to_s + "th"
    else
      number_as_string = num.to_s
      number_as_array = number_as_string.split("")
      if number_as_array.last == 0
        @ordinated = num.last.to_s + "th"
      end

    end
    return @ordinated
  end
end