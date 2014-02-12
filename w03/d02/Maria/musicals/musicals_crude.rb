require 'pg'

class Table
  @@connection = PG.connect( dbname: "sandbox" )
# here above we are storing db connection
  def self.insert(data)
    @@connection.exec "insert into #{self.to_s.downcase} ( #{ transform_keys(data.keys) } ) values ( #{ transform_vals(data.values) } )"
  end

  def self.find(id)
    @@connection.exec("select * from #{self.to_s.downcase} where id=#{id}").first
# the first result that is passed back from the db.
#self is the table so self,downcase etc = musicals.    
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

  #puts Musicals.find(1)

  #Musicals.insert({:title => "The sound of Music", :year =>1959, :composer =>"Rodgers"})
#above puts it into bd table automagically
  puts Musicals.find(2)

  class Sandwich <Table
  end
  #so the class will add to table auto.