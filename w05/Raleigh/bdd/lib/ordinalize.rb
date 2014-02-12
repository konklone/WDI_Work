class Ordinalize
  def self.convert(num)

   if num.to_s[-2] == "1" 
      oridinal = num.to_s + "th"
      return oridinal
   elsif num.to_s[-1] == "1"
      oridinal = num.to_s + "st"
      return oridinal
   elsif num.to_s[-1] == "2"
      oridinal = num.to_s + "nd"
      return oridinal
   elsif num.to_s[-1] == "3"
      oridinal = num.to_s + "rd"
      return oridinal
   else
      oridinal = num.to_s + "th"
      return oridinal
   end

  end
end