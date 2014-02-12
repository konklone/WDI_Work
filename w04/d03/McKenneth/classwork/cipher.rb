# @initial = ("a".."z").to_a
# @cipher = ("n".."z").to_a + ("a".."m").to_a 
class Cipher

def initialize
@initial = ("a".."z").to_a
puts "How many to shift?"
shift = gets.chomp.to_i
@cipher = @initial.rotate(shift)
end

def encode(string)
  output = ""
  words = string.downcase.split(" ")
  words.each do |single| 
    single.each_char do |x|
      if x == '\'' or x =='?'
        letter = x
      else
        letter = @cipher[@initial.index(x)]
      end
      output += letter
    end
  output += " "
  end
  puts output
end
end

code = Cipher.new
code.encode("hello")
code.encode("wdinstagram")
code.encode("My name is earl")
code.encode("It's the hard knock life for us")
code.encode("Do you really want to hurt me?")


