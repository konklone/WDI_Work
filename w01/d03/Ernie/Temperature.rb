def convert_to_fahrenheit(c)
    (c* 9/5) + 32
end

def convert_to_k (k)
  k + 273
end


puts "Enter a tempreture in celsius"
tempreture_celsius = gets.chomp.to_f

puts "Do you want to convert to (f)arenheit or (k)elvin"
tempreture_type = gets.chomp.downcase

case tempreture_type
when "f"
  puts convert_to_fahrenheit (tempreture_celsius)
when "k"
  puts "It is #{convert_to_k(tempreture_celsius)} degrees k"
else
  puts "please choose f or k"
end

