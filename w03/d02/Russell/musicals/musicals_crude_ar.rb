# require 'pg'
# require 'pry'

# class Table
#   @@connection = PG.connect( dbname: "sandbox", host: "localhost")



#   def self.insert(data)
#     @@connection.exec "insert into #{self.to_s.downcase} ( #{ transform_keys(data.keys) } ) values ( #{ transform_vals(data.values) } )"
#  ##this is like db_conn for the executive function
#  ## self is the table, data is a parameter to the method 
#   end

#   def self.find(id)
#     @@connection.exec("select * from #{self.to_s.downcase} where id=#{id}").first
#   end

#   private

#   def self.transform_vals(values)
#     values.map { |v| "\'#{v}\'" }.join(",")
#   end

#   def self.transform_keys(keys)
#     keys.map(&:to_s).join(',')
#   end
# end


# class Musicals < Table
#   end
# #   puts Musicals.find(1)
# #  INPUT THIS: ruby musicals_crude_ar.rb
# # RETURNS THIS:{"id"=>"1", "title"=>"Follies", "year"=>"1971", "composer"=>"Sondheim"}

# Musicals.insert({ :title => "The Sound of Music", :year => "1989", :composer => "Rodgers"})

# puts Musicals.find(1)

# # RETURNS: {"id"=>"2", "title"=>"THe Sound of Music", "year"=>"1989", "composer"=>"Rodgers"}


# class Sandwiches < Table
# end

require 'pg'
 
class Table
  @@connection = PG.connect( dbname: "sandbox" )
 
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

# puts Musicals.find(1)

Musicals.insert({:title => "THe Sound of Music", :year => "1989", :composer => "Rodgers"})
puts Musicals.find(2)

