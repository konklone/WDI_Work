require './person'
require './apartment'
require './building'

puts "Welcome to Erica's Awesome Apartment App!\n"
puts "What would you like to access? (B)uilding Info, (A)partment Info, or (T)enant?"
menu_option = gets.chomp.downcase.to_s

case menu_option
  when "b"
    puts " \n"
    puts "" 
  when "a"
    #give apartment info 
  when "t"
    puts "Tenant Info\nPlease create a new tenant profile."
    print "Name:"
    name =gets.chomp.downcase.to_s 

    print "Age: " 
    age = gets.chomp.downcase.to_s

    print "Gender: "
    gender = gets.chomp.downcase.to_s

    print "Apartment: "
    apartment = gets.chomp.downcase.to_s
    new_person = Person.new(name, age, gender, apartment) 
    new_person.push() 
    puts "Profile completed! \n Name:#{name}\n #{age}\n #{gender}\n #{apartment}"
end

