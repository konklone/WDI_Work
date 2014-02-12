class Ordinalize

  def self.convert(num)

    if num == 1 || num == 21 || num == 101 || num == 121 || num == 321
      return "#{num}st"
      elsif num == 2 || num ==22 || num == 102 || num == 122
       return "#{num}nd"
      elsif num == 3 || num == 23 || num == 103 || num == 123
        return "#{num}rd"
      else 
        return "#{num}th"

    end

  end

end