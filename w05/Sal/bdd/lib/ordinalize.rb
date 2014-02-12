class Ordinalize
  def self.convert(num)
    case num
    when 1
      "1st"
    when 2 
      "2nd"
    when 3
      "3rd"
    when 4
      "4th"
    when 10 
      "10th"
    when 11
      "11th"
    when 12
      "12th"
    when 13
      "13th"
    when 14
      "14th"
    when 20
      "20th"
    when 21
      "21st"
    when 22
      "22nd"
    when 23
      "23rd"
    when 24
      "24th"
    when 100
      "100th"
    when 101
      "101st"
    when 102 
      "102nd"
    end
  end
end