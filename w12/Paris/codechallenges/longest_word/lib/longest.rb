

  def longest_word(words)
    array = words.split(",")
    array.each do |word|
      words = []
      words << word
    end
      sorted = []
      # words << word.length
      sorted << words.sort
      sorted[0]
  end

