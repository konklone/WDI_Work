class Shelter
  def initialize(name)
    @name = name
    @clients = []
    @animals = []
  end
  def name
    @name
  end
  def clients
    @clients
  end
  def animals
    @animals
  end
  def prompt
    print ">"
  end
  #---------------non initialized methods
  
  def animal_ct
    @animals.size
  end
  def client_ct
    @clients.size
  end
  #list all shelter clients
  def list_clients
    i=1
    puts "Here are our clients!"
    while i<= @clients.size
      puts @clients[i-1].name + " who is " +@clients[i-1].age.to_s+ " who has these pets: " +@clients[i-1].pets.join(" | ")
      i+=1
    end
  end
  #list all shelter animals
  def list_animals
    i=1
    puts "Here are our animals!"
    while i<= @animals.size
      if @animals[i-1].kind_of?(Array)
        puts @animals[i-1][0]
      else
      puts @animals[i-1].name + " who is a " +@animals[i-1].species+ " who has these toys: " +@animals[i-1].toys.join(" | ")
      end
      i+=1
    end
  end
  
  #adds a client to the shelter
  def add_client(client)
    @clients << client
  end
 #adds a pet to the shelter
  def add_pet(pet)
    @animals << pet
  end
 
  #adopt a pet method 
  def adopt_pet
    i=1
    j=1  
    puts "Select the number of the client that wants to adopt a pet."
  #lists all clients
    while i <= @clients.size
      puts "#{i}. " + @clients[i-1].name
      i+=1
    end
    prompt
    choice = gets.chomp.to_i
    puts "These are our animals, select the number of the one to adopt."
  #lists shelters pets, takes it out, and pushes to client pet list
    while j <= @animals.size
      puts "#{j}. " + @animals[j-1].name
      j+=1
    end
    prompt
    pet_select = gets.chomp.to_i
    pet_actual = @animals.delete_at(pet_select - 1)
    if pet_actual.kind_of?(Array)
      @clients[choice-1].pets << pet_actual
    else
    @clients[(choice - 1)].pets << [pet_actual.name + " who is a " + pet_actual.species + " and has these toys: " + pet_actual.toys[0]]
    end
  end
  #returns a pet to the shelter
  def return_pet
    i=1
    j=1  
    puts "Select the number of the client that wants to return a pet."
    #lists clients of the shelter
    while i <= @clients.size
      puts "#{i}. " + @clients[i-1].name
      i+=1
    end
    prompt
    choice = gets.chomp.to_i
    puts "These are their pets, select the number of the one to return."
    puts " (Clients cannot return pets they started with!! That's just cruel)"
  #Lists pets, takes the pet back and pushes to the shelter
    while j <= @clients[choice-1].pets.size
        if @clients[choice-1].pets[j-1].kind_of?(Array)
          puts "#{j}. " + @clients[choice-1].pets[j-1][0]
        else
         puts "#{j}. " + @clients[choice-1].pets[j - 1]
       end
         j+=1
    end
    prompt
    pet_select = gets.chomp.to_i
    pet_actual = @clients[choice-1].pets.delete_at(pet_select - 1)
    @animals << pet_actual
  end
  
end