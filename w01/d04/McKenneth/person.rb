require_relative 'building'
require_relative 'apartment'

class Person
  attr_accessor :name, :age, :gender, :apartment, :current
  $tenant =[]
  

  def initialize
  @name
  @age
  @gender
  @apartment
  end
#make a new person with user input
  def make_person
        puts "What's their name?"
        @name = gets.chomp
        puts "How old are they?"
        @age = gets.chomp
        puts "What's their gender?"
        @gender = gets.chomp
        puts "What apartment number do they have?"
        @apartment = gets.chomp
       
#makes an array holding attr., passes to another array       
        hold= [@name, @age, @gender, @apartment]
        puts hold
        $tenant.push(hold)
        
      end
  
  def to_s
    puts "#{name} who is #{@age} years old, and is #{@gender}: lives in apartment #{@apartment}."
  end

end
