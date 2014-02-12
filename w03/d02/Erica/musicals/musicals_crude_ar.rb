# in our last example we highlighted nightmare scenarios.
# this file fixes that.



require 'pg'
      # what are we storing in this class variable? a database connection 
     class Table
      @@connection = PG.connect( dbname: "sandbox" )
     
      def self.insert(data)
        @@connection.exec "insert into #{self.to_s.downcase} ( #{ transform_keys(data.keys) } ) values ( #{ transform_vals(data.values) } )"
      end
      
       # what is @@connection.exec = like db_conn. 
       # self in this case is Table. 
       # id is a parameter to this method.
       # .first is the first result passed back from PG
      def self.find(id)
        @@connection.exec("select * from #{self.to_s.downcase} where id=#{id}").first
      end
     
      private
     
      def self.transform_vals(values)
        values.map { |v| "\'#{v}\'" }.join(",")
      end
     
      def self.transform_keys(keys)
        keys.map(&:to_s).join(',')
      end
    end


  # create new class that inherits from table
  # we have subclassed Table to create a class called Musicals.
  # we have given the Musicals class an id of (1)
  class Musicals < Table
  end

  # puts Musicals.find(1)
  Musicals.insert({:title => "The Sound of Music", :year => 1959, :composer => "Rodgers"})
  # it is going to convert this into a SQL query for us !!!!!!!!
  puts Musicals.find(2) 



