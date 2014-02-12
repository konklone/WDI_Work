class Ordinalize
  def self.convert(num)
      case num 
        when num = 1 || num = 101 || num = 121 || num = 321 
          return "#{num}st" 
        when  num = 2 || num = 22 || num = 102 || num = 122
         return "#{num}nd" 
        when num = 3 || num = 23 || num = 103 || num = 123
         return "#{num}rd"
        when num = 4 
          return "#{num}th"
        # when num (10..14)
        #   return "#{num}th"
      end
  end   
end 

class Ordinalize
  def self.convert(num)
    result = num.to_s

    result += if result[-2] == "1"
      return "th"
    elseif result[-1]
      
      end
  end   
end 