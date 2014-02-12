class Ordinalize
  def self.convert(num)
    ordin = num.to_a  
      ordin.each do |num|
    if ordin == 1 || 21 || 101 || 121 || 321
       num + "st"
       return num.to_s
    end
     
    if num == 10..19
      return num + "th"
    end

   end 
 end
end


# if num == (num .. )
