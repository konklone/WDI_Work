# main file for the rental app

# requieing pry for debugging purposes and the other files associated with this app
require 'pry'
require './building'
require './apartment'
require './person'

  def menu
    # Giving the end user a menus of options
    puts "Would you like to add and (A)partmnet, a new (T)enant or (Q)uit the program?"
    create = gets.chomp.downcase

    CHANGE TO DOWNCASE ANS IT MIGHT WORK
    
    # using an if statment to direct the program to the proper method
    if create == "A"
      new_apartment_obj
    elsif create == "T"
      new_person_obj
    elsif create == "Q"
      puts "So Long!  Come back real soon ya hear!"
      abort
    end
  end

  # End user form, prompting for the required information
  def new_apartment_obj
    puts "How much are you willing to spend?"
      @price = gets.chomp.to_i

    # I don't believe this will be required input.  It needs coding to place a value when an apartment is filled
    #@is_occupied = is_occupied

    puts "How much square footage are you looking for?"
      @sqft = gets.chomp.to_i
    puts "How many bedroom(s) would you like?"
    @num_beds = gets.chomp.to_i
    puts "How many bathrooms would you like?"
    @num_baths = gets.chomp.to_i
    puts "Total number of people who will be sharing the apartment?"
    @renters = gets.chomp

    #new_apartment_obj = ""

  end

  def new_person_obj
  end





