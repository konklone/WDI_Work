class Student < ActiveRecord::Base
  validates :name, :project_description, presence: true
end