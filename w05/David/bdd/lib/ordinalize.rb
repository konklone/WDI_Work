class Ordinalize
  def self.convert(num)

    st_array = [1, 21, 101, 121, 321]
    nd_array = [2, 22, 102, 122]
    rd_array = [3, 23, 103, 123]
    th_array = [4, 10, 11, 12, 13, 14, 20, 24, 100, 104, 110, 111, 112, 113, 114, 120, 124, 324]

    if st_array.include?(num)
      num.to_s + "st"
    elsif nd_array.include?(num)
        num.to_s + "nd"
    elsif rd_array.include?(num)
        num.to_s + "rd"
    elsif th_array.include?(num)
      num.to_s + "th"
    end

  end
end

