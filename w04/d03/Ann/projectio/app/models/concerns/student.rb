class Student < ActiveRecord::Base
  validates :name, :project_description, :github_link, :presence => true 

  has_many :dependencies 
end 