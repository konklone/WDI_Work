require 'pg'

class Table
  @@connection = PG.connect( dbname: "sandbox" , host: "localhost")
     
  def self.insert(data)
    @@connection.exec "insert into #{self.to_s.downcase} ( #{ transform_keys(data.keys) } ) values ( #{ transform_vals(data.values) } )"
  end
     
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

class Musicals < Table
end

puts Musicals.find(1)
Musicals.insert({:title => "The Sound of Music", :year => 1959, :composer => "Rodgers"})
puts Musicals.find(2)
