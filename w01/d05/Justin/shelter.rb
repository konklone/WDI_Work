  

    class Shelter
      def initialize(name)
        @name = name
        @animals = [ ]
        @clients = [ ]
        @adoption_database = {}  #populated by client/animal key/values
      end
     
      def display_animals
        puts "#{@animals.join(", ")} lives here"
      end
     
      def display_clients
        puts "#{@clients.join(", ")} are our clients"
      end

      #writes animal paramenter string into animal array
      def animal_add(animal)
        @animals << animal
      end
      
    #writes client paramenter string into client array
      def clients_add(client)
        @clients << client
      end
     
      def adopt(client, animal)
         @adoption_database[client] = animal
      end
     
      def remove(client)
        @adoption_database.delete(client)
      end
     
      def adoption_database_reader
         @adoption_database
      end
     
      def to_s
        return "Our name is #{@name} we have #{@clients.count} clients and  #{@animals.count} animals"
      end
     
      def print
        puts self.to_s
      end
     
     
     
     
     
    end

