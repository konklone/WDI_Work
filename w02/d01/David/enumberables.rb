# people = ["Jeff", "Barney the Dinosaur", "Josephe (dream coat)"]

# puts people.join(", ")

# people.each {|name| puts "#{name}"}

require 'pry'

class CSV

  def initialize
    @data = ""
  end

  def data
    @data
  end

   def push(item)
    self.data << item
    self.data << ","
  end

  def each(&block)
    #puts each item from the string seperated by comma into an array
    for item in self.data.split(",")
    #for item in @data.split(",")
      puts "Local variable: #{item}"
      puts "Instance variable: #{@data}"
      puts "Data local variable: #{data}"
      #item puts the parameter in the do loop
      block.call(item)
    end
  end

end

class Array
  
  def initialize
    @array = []
  end

  def array
    @array
  end

  def push(item)
    self.array << item
  end

  def join(&block)

  end

end


c = CSV.new


c.push("Jeff")
puts c.data
c.push("PJ")
puts c.data

# c = "Jeff,PJ"


puts "\n********* Each Loop *******\n"
c.each do |name|
  puts name
end

# c.each(def (name, some_string))
# puts name
# puts some some_string
# end)
