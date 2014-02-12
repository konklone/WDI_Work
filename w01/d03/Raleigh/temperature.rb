  # Celsius Temperature Converter

  # Definitions
  def convert_to_fahrenheit(c)
      (c * 9 / 5) + 32
  end

  def convert_to_kelvin(c)
      c + 273.15
  end

  puts "Please enter a temperature in Celsius: "
  temp_cel = gets.chomp.to_i

  puts "Do you want to convert the temperature to (F)ahrenheit or (K)elvin?"
  convert = gets.chomp.capitalize

  if convert == "Fahrenheit" || convert == "F"
    puts "Your temperature in Fahrenheit is #{convert_to_fahrenheit(temp_cel)}°"
  elsif convert == "Kelvin" || convert == "K"
    puts "Your temperature in Kelvin is #{convert_to_kelvin(temp_cel)}°"
  else
    puts "I'm sorry you did not enter Fahrenheit or Kelvin."
  end
