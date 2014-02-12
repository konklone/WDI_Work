def translate(str)
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include?(str[0])
    str += "way"
  else
    i = 0
    while i < str.length
      if vowels.include?(str[i + 1])
        last_consonant = i
        i = str.length
      else
        i += 1
      end
    end
    str += str[0..last_consonant]
    str += "ay"
    str = str[(last_consonant + 1)..(str.length - 1)]
  end
  puts str
end

translate("brad")

