class Person

  attr_accessor :name, :age, :gender, :apartment

      def initialize (name, age, gender, apartment)
        @name = name
        @age = age
        @gender = gender
        @apartment = apartment
      end

      def to_s
        return "#{@name} is #{@age}, #{@gender} and has apt #{@apartment}."
      end

end


