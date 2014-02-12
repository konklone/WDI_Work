def too_to_to(string) 
  newstring = []
  newstring << string.split("//")
  newstring.each do |char|
    if char.uniq?
      newstring << char
    end
  end
  return newstring.join("//")
end
