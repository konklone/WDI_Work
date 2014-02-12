def anagram(word, multiple_words)
  comparison_array = %w(multiple_words)
  og_letter_array = word.split(//)
  comparison_array.each do |comparison_word|
    comp_letter_array = comparison_word.split(//)
    if condition og_letter_array.sort == comp_letter_array.sort
      puts "#{comparison_word} is an Anagram"
    end
  end
end

