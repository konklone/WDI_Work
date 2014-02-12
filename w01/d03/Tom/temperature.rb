puts "Please enter a temperature in Celsius"
celsius = gets.chomp.to_i

puts "Convert to (f)arenheit or (k)elvin?"
response = gets.chomp.downcase

if response == "f"
    convert_to_farenheit
  elsif response == "k"
    convert_to_kelvin
  else
    puts "please pick f or k to convert."
end

def convert_to_farenheit
  farenheit = (celsius * 9/5) + 32
  puts "The temp is #{farenheit} degrees in f"
end

def convert_to_kelvin
  kelvin = celsius + 273
  puts "The temp is #{kelvin} degrees in k"
end
