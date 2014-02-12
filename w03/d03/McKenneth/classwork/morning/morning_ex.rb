require 'faker'
require 'pg'
require 'pry'
# require 'active_record'

# ActiveRecord::Base.establish_connection(
#   adapter: "postgresql",
#   host: "localhost",
#   username: "macadocious",
#   password: "",
#   database: "sandbox"
#   )

# require_relative './models/morning_user'


user_conn = PG.connect(dbname: "sandbox")



class User
  def initialize(id, name, street_add, email_add)
    @id = id
    @name = name
    @street_add = street_add
    @email_add = email_add
  end

  def to_s
    "#{@id} -- Name: #{@name} -- A:#{@street_add} -- E: #{@email_add}"
  end

end

@i=1
@seed_hash= {}

50.times do
  id = @i
  name = Faker::Name.name
  street_add = Faker::Address.street_address
  email_add = Faker::Internet.email
  @seed_hash[id] = User.new(id, name, street_add, email_add)
  @i+=1
  end

binding.pry
@keys = 1
while @keys <= @seed_hash.keys.last
 user_conn.exec("insert into morning_users (name, street_add, email_add) VALUES ('#{@seed_hash[@key][1]}', '#{@seed_hash[@key][2]}', '#{@seed_hash[@key][3]}');")
 @keys+=1
end
user_conn.close