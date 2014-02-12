# abstract away from implementation of Table
require 'pg'
 
class Table
  @@connection = PG.connect( dbname: "sandbox" )
 
  def self.insert(data)
    # for Musicals ex all the way below, take Musicals turn to string then downcase
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

# convention
class Musicals < Table
end

Musicals.insert({title: "The Sound of Music", year: 1959, composer: "Rodgers"})
