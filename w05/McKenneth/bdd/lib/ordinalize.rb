class Ordinalize
  def self.convert(num)
    if ("10".."19").include?(num.to_s[-2,2])
        num = "#{num}th" 
     elsif num.to_s[-1] == "1"
        num = "#{num}st"
    elsif num.to_s[-1] == "2"
        num = "#{num}nd"
    elsif num.to_s[-1] == "3"
        num = "#{num}rd"
    else
        num = "#{num}th" 
    end 
  end
end