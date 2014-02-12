require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "T-Virus",
  password: "",
  database: "sandbox"
)

class Painting < ActiveRecord::Base
  belongs_to :artist
  validates :title, :year, :image_url, presence: true
end

class Artist < ActiveRecord::Base
  has_many :paintings
  validates :name, :nationality, :dob, presence: true
end

binding.pry