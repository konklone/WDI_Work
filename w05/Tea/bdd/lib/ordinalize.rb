class Ordinalize
  def self.convert(num)
    num_digits = num.to_s.chars.to_a.count
    case num
      when 1
        num.to_s + "st"
      when 2
        num.to_s + "nd"
      when 3
        num.to_s + "rd"
      when 4
        num.to_s + "th"
    end
  end
end
