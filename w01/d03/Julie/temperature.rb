puts "Enter a temperature in celsius"
temp_celsius = gets.chomp.to_f

puts "Choose (f)ahrenheit or (k)elvin"
temp_type = gets.chomp.downcase

def convert_to_f (c)
  (c * 9/5) + 32
end

def convert_to_k(c)
  c +273
end

case temp_type
when "f"
  puts convert_to_f(temp_celsius)
when "k"
  puts convert_to_k(temp_celsius)
else 
  puts "Please enter (f) or (k)"
end