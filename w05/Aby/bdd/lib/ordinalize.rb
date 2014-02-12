class Ordinalize
  def self.convert(num)
  	result = num.to_s

  	# special cases for 10's
  	# if 2nd to last char is 1 add "th"

  	result += if result[-2] == "1"
      return "th"
    elsif result[-1] ==  "1"
  	  return "st"
  	elsif result[-1] ==  "2"
  	  return "nd"
  	elsif result[-1] ==  "3"
      return "rd"
   else 
	 return "th"
   end
  end
end
    

