# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "whatcha wanna do wit me?"
  puts "(b)asic, (a)dvanced, or (q)uit:"
  response = gets.chomp.downcase
  case response
    when 'b'
      basic_calc
    when 'a'
      advanced_calc
    when 'q'
      puts "goodbye!"
    else
      puts "that wasn't one of the options, idiot!"
      puts " "
      menu
    end
 end




# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  puts "gimme an operation: (a)dd, (s)ubtract, (m)ultiply, (d)ivide"
  operation = gets.chomp.downcase

  puts "gimme a numbuh:"
  no1 = gets.chomp.to_i

  puts "gimme another one:"
  no2 = gets.chomp.to_i

  puts " "

  case operation
    when 'a'
      puts "#{no1} + #{no2} is #{no1 + no2}!"
    when 's'
      puts "#{no1} - #{no2} is #{no1 - no2}!"
    when 'm'
      puts "#{no1} * #{no2} is #{no1 * no2}!"
    when 'd'
      puts "#{no1} / #{no2} is #{no1.to_f / no2}!"
    else
      puts "that's not an operation, idiot. try again."
      puts " "
      puts basic_calc
    end
    puts " "
  menu

end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  puts "(p)ower, (s)qrt: "
  operation = gets.chomp

  case operation
    when 'p'
      puts "gimme a base:"
      base = gets.chomp.to_i

      puts "gimme an exponent:"
      exp = gets.chomp.to_i

      puts "#{base} raised to the power of #{exp} is #{base ** exp}!"
    when 's'
      puts "gimme a numbuh:"
      no1 = gets.chomp.to_i

      puts "The square root of #{no1} is #{no1 ** (1.0 / 2)}!"
    else
      puts "that's not an operation, idiot. try again."
      puts " "
      puts advanced_calc
    end
    puts " "

    menu

end


menu
