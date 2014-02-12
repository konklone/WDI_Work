class Dependency < ActiveRecord::Base
  validates :name, :dep_type, :is_gem, :presence => true 

  belongs_to :student 
end 