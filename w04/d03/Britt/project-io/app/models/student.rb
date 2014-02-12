class Student < ActiveRecord::Base
  validates :name, :project_description, presence: true
  validates :name, :project_description, uniqueness: true

  has_many :dependencies
end