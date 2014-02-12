ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "DtotheFP",
  password: "",
  database: "sandbox"
)

class Painting < ActiveRecord::Base
  belongs_to :artist
end

class Artist < ActiveRecord::Base
  has_many :paintings
end
