require 'active_record'
require 'pry'
require 'active_support'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host:     'localhost',
  username: 'ecasilla',
  password: '',
  database: 'moma_db'
  )

class Artist < ActiveRecord::Base
  belongs_to :painting
end

class Painting < ActiveRecord::Base
  has_many :artist
end

binding.pry