@words = %w(enlists google inlets banana)

def detector(string)
  original = string.split(//)

  @words.each do |word|
    i = word.split(//)
    
    if (i.size == original.size) && (i.sort == original.sort)
      
      print i
    end
  end
end

detector("listen")