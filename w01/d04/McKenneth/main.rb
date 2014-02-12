require_relative 'apartment'
require_relative 'building'
require_relative 'person'

$building = Building.new("142 Garth Rd", "Modern Post-Deco", "has no Doorman", "is a walkup", "10 stories")


$option = ["[ Tenant ] creator", "[ Apartment ] creator", "[ List ] Apartments", "[ Resident ] List", "[ Quit ]"]
puts "Welcome!! This is a new development, still trying to get some new tenants and put together some apartments"
puts $building.to_s
puts "Let's get started!"

def menu
  #gets input from user for what they want to do
  puts "Here are the options:"
  puts $option.join("\n")
  
  @selection = gets.chomp.downcase
  case @selection
     #makes a new tenant
      when "tenant"
        $new_tenant = Person.new
        $new_tenant.make_person
   
    #makes a new apartment
      when "apartment"
        puts "Ok, so first what is the apartment number?"
        num= gets.chomp
        
        new_apartment = Apartment.new
        new_apartment.make_apartment(num)
      
      #lists all tenants
      when "list"
        if $tenant.empty?
          puts "No apartments yet!"
        else
          puts $tenant
        end
     
      #lists all apartments  
      when "resident"
        $building.list_apartments
      when "quit"
        "quit"
      else
        "Please choose one of the options above!"
      end
      
end

@selection = menu
while @selection != "quit"
  menu
end

