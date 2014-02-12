require './person' #these are file paths
require './apartment'
require './building'

melissa = Person.new("Melissa", "25", "female", "4b")
bob = Person.new("Bob", "23", "male", "3a")
karen = Person.new("karen", "28", "female", "6b")
apartments = {"4b" => "melissa", "3a" =>"bob", "6b" => "karen" }
renters = ["melissa", "bob", "karen"]

a = Apartment.new("is_occupied", "700 sqft", "2 beds", "2 baths")
b = Building.new("2000 South Street", "modern building", "has doorman", "is a walk up", "3 floors")
p = Person.new("melissa", "20", "female", "2d")

b.apartments = apartments
a.renters = renters


#need to add every p into the renters hash. 
puts "Welcome to our building. Here is our menu: create a (p)rofile, (a)dd your apartment listing, (l)ist current available units, (r)ead about current tenants or (q)uit."

response = gets.chomp

 if response == "p"
    puts "Tell me your name."
    name = gets.chomp
    puts "Tell me your age."
    age = gets.chomp
    puts "What's your gender?"
    gender = gets.chomp
    puts "What apartment are you in?"
    apartment = gets.chomp

  p = Person.new(name, age, gender, apartment)
  p.apartment = apartment
  p.name = name

  add_apartments = {}
  add_apartments[:apartment] = name

  elsif response== "a"
    puts "What's your name?"
    renters = gets.chomp
    puts "Is your apartment occupied? Please answer: is occupied / is not occupied"
    is_occupied = gets.chomp
    puts "What's the square footage?"
    sqft = gets.chomp
    puts "How many bedrooms do you have?"
    num_beds = gets.chomp
    puts "How many bathrooms do you have?"
    num_baths = gets.chomp

  a = Apartment.new(is_occupied, sqft, num_beds, num_baths)

  elsif response == "l"

    puts b.list_apartments
    #the below was my attempt to add an array of new apartments added from the person profile to list_apartments
    #puts b.list_apartments + add_apartments.join(", " )
    # puts b.list_apartments + "#{add_apartments}"

  elsif response == "r"  
   puts a.list_renters

  else response == "q"
    puts "Goodbye." 
  end 

# response = menu
# # This process should continue until the user selects a quit option from the menu
# while response != 'q'

#   response = menu
# end

