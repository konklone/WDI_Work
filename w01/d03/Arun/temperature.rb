
	puts "Please enter the current temperature in Celcius"
	celcius = gets.chomp.to_i
	puts "Would you like to convert to (f)arenheit or (k)elvin?:"
	temp = gets.chomp.downcase
def convert_to_farenheit (c)
	(c * 9/5) + 32
end

def convert_to_kelvin (c)
	c + 273
	
end
case temp 
when "f"
	puts " #{convert_to_farenheit(celcius)} in farenheit"
when "k"
	puts "#{convert_to_kelvin(celcius)} in kelvin"
end
