class Ordinalize
  def self.convert(num)
  	if (num != 2) and (num != 3)
  		converted_num = num.to_s + "st"
  	elsif num == 2
  		converted_num = num.to_s + "nd"
  	else
  		converted_num = num.to_s + "rd"
  	end
  end
end

