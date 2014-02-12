require "pg"
require "pry"

my_db = PG.connect(dbname:"nichol")
result = my_db.exec ( "SELECT * FROM city;")
puts result

result.values.each do |x|
    puts x.to_s
    
end


#binding.pry
#puts result.values