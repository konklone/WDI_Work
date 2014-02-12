def convert_to_fahrenheit
  ($celsius*9/5) + 32
 end  

def convert_to_kelvin
  $celsius + 273.15
end

puts "Enter a temperature in celsius."
$celsius = gets.chomp.to_f

puts "Would you like the temperature converted to (f)ahrenheit or (k)elvin?"
conversion = gets.chomp.downcase

if conversion == "f"
  puts "Your temperature is #{convert_to_fahrenheit} in fahrenheit."
else
  puts "Your temperature is #{convert_to_kelvin} in kelvin."
end


# oh my gosh! it works! hoooraaaaaay! :D

