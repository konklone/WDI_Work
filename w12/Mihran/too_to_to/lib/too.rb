def too_to_to(word)

  array = word.chars
  unless array.include?(" ")
    array.uniq!.join("")
  else
    space_index = array.index(" ")
    word1 = []
    word2 = []

    multiple_words = [word1, word2]
    i = 0

    for i <= space_index
      word1 << array[i]
      i +=1
      binding.pry
    end
    i = space_index
    for i < array.length
      word2 << array[i]
      i+=1
    end
  end

end 



# in multiple-word strings, separate each words into its own array 