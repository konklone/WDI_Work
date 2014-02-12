class Artist < ActiveRecord::Base
   has_many :paintings
   # Validation
   validates :name, :date_of_birth, presence: true
end