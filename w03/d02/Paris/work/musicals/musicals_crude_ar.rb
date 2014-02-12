require 'pg'

class Table
  # database connection in a class variable
  @@connection = PG.connect( dbname: "sandbox" )

# self is Table. this is a method to write a new line into the table. 
  def self.insert(data)
    # execute the query
    @@connection.exec "insert into #{self.to_s.downcase} ( #{ transform_keys(data.keys) } ) values ( #{ transform_vals(data.values) } )"
  end

  def self.find(id)
    # this is a reader per id in the table. to_s converts a class name into a string where the name of the class is the same as the table, in this case musical.
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

class Musicals < Table


end

# puts Musicals.find(1)
Musicals.insert({:title => "The Sound of Music", :year => 1959, :composer => "Rodgers"})

# this finds the musical table row associated with id 2. 
puts Musicals.find(2)