def pascal(row)
  result = []
  if row == 0
    return [1]
  elsif row > 0
    result = [] 
    length = row + 1
    length.times do |num|
    result = result << 1
  end
    result.each do |num|
      if num != result.first && num != result.last
        num + 1

      end
    end

   return result
  end
end

# good for practicing recursive methods.
