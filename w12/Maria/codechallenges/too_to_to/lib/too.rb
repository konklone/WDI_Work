def too_to_to(string)
  a = string.each_char {|c|
    if c = c 
      c.delete "c"
    end
    puts "#{a}"
  }
end