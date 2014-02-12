require './person'
require './apartment'
require './building'

#For loop
# def menu_top
# end
  puts "Welcome to: Apartment Building Organizational App\n"
  puts "What would you like to access? (B)uildings, (A)partments, or (T)enant Profiles"
    menu_option = gets.chomp.downcase

case menu_option
  when "b"
    puts "Would you like to add a new building?"

  when "a"
    puts "Apartment Search \n Please enter an apartment number view current tenants" 
    apt_num = gets.chomp.downcase.to_s

    new_apts = Apartment.new(@price, @is_occupied, @sqft, @num_beds, @num_baths, @renters)

  when "t"
    puts "Tenant Profiles \nPlease create a new tenant profile."
    print "Name: "
    name = gets.chomp.downcase.to_s
    
    print "Age: "
    age = gets.chomp.downcase.to_s 

    print "Gender: "
    gender = gets.chomp.downcase.to_s

    print "Apartment: "
    apt = gets.chomp.downcase.to_s

    new_tenants = Person.new(name, age, gender, apt) 


    puts "\nNew Profile Completed! \n Name: #{name}\n Age: #{age} \n Gender: #{gender} \n Apartment: #{apt} \n"
        

end  

# response = menu_top
# if create_profiles

# else
#   list_profiles
#end

# while response != "q"
#   menu_top
# end