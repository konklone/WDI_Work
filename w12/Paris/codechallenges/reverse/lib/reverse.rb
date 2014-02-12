  def reverse_words(words)
    words.each do |word|
      word.reverse
    end

  end

  def reverse_each_word(words) 
    words.map do |word|
      word.reverse
    end
  end

end