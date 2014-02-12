people = ["Jeff", "Barney the Dinosaur", "Joseph (dream coat)"]

#people.each do |name| 
#  puts name 
#end 

class CSV
  def initialize 
    @data = ""
  end 

  def push(item)
    self.data << item 
    self.data << ","
  end 

  def data
    @data 
  end 

  def each(&block)
    for item in data.split(",")
      #changing data from ["a,b,c"] to ["a", "b", "c"]
      puts "Local variable: #{item}"
      puts "Instance variable: #{@data}"
      block.call(item) 
    end 
  end 
end 

c = CSV.new 

#puts c.data 
c.push "Jeff"
c.push "PJ"
#puts c.data  

c.each do |name|
  puts name 
end 

c.each {|name| puts name} 

#each method 

