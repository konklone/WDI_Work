class Ordinalize
  def self.convert(num)
    if end_in_one?(num)   
      "#{num}" + "st"
    elsif num == 3
        "#{num}" + "rd"
    elsif num >= 4 && num < 21
        "#{num}" + "th"

    else "#{num}" + "nd"
    end
  end
end

def end_in_one?(num)
    string = num.to_s
  if string.last(1) == "1"
    true
  end
end



class String
  def last(n)
    self[-n,n]
  end
end