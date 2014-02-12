require "pry"

@anagram = %w(enlists google inlets banana)

def anagram(word)
   @anagram.each do |a|
      l = word.split(//)
      if l.sort == a.sort
         puts a
      else
         puts "nope"
      end

      end
   end

anagram("listen")
