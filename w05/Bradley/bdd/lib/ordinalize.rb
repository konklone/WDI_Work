class Ordinalize
  def self.convert(num)

    num = num.to_s

    weird_nums = ["11", "12", "13", "14"]

    if weird_nums.include? (num[-2..-1])
      num += 'th'

    elsif num[-1] == '1'
      num += 'st'

    elsif num[-1] == '2'
      num += 'nd'

    elsif num[-1] == '3'
      num += 'rd'
    
    else
      num += 'th'
    end


    num

  end
end