require 'pry'
require './person.rb'
require './apartment.rb'
require './building.rb'


puts "This is one hell of a building!"

hell_of_a_buildling = Building.new("98 President Street", "townhouse", true, false, 4)


puts "Would you like to create a new apartment (na), create a new person (np), or quit? (q)?"
    $user_choice = gets.chomp.downcase

if $user_choice == "na"

    puts "What is the price of the apartment?"
    price = gets.chomp.to_i

    puts "Is the apartment occupied? Yes/No?"
    is_occupied = gets.chomp.downcase

    puts "How many square feet is the apartment?"
    sqft = gets.chomp.to_i

    puts "How many bedrooms does the apartment have?"
    num_beds = gets.chomp.to_i

    puts "How many baths?"
    num_baths = gets.chomp.to_i

    apt = Apartment.new(price, is_occupied, sqft, num_beds, num_baths)

elsif $user_choice == "np"

    puts "What's the person's name?"
    name = gets.chomp.downcase

    puts" What's the person's age?"
    age = gets.chomp.to_i

    puts "What's the gender? m or f ? "
    gender = gets.chomp.downcase

    puts "What apartment?"
    apartment = gets.chomp.to_i.to_s
end

person = Person.new(name, age, gender, apartment)

apartment.renters.push(person)

