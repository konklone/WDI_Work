def convert_to_fahrenheit (c)
  return (c * 9/5) + 32
  end

def convert_to_kelvin (c)
  c + 273
end

puts "Please enter a temperature in Celsius"
  temp_in_c = gets.chomp.to_f

puts "Would you like to convert to (F)ahrenheit or (K)elvin?"
  conversion = gets.chomp.downcase

case conversion

  when "f"
    puts "The temperature in Fahrenheit is #{convert_to_fahrenheit(temp_in_c)}"
  when "k"
    puts "The temperature in Kelvin is #{convert_to_kelvin (temp_in_c)}"
  else
    puts "Try again!"

end


  