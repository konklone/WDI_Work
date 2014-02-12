class Painting < ActiveRecord::Base
   belongs_to :artist
      # Validation
   validates :title, presence: true
end