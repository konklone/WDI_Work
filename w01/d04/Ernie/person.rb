require "pry"
   
  class Person
      attr_accessor :name, :age, :gender, :apartment

          def initialize (name,age,gender,apartment)            
                @name = name
                @age = age
                @gender = gender
                @apartment = apartment
          end

          def to_s 
             "Im #{@name} and im #{@age} years old!"
          end
end





