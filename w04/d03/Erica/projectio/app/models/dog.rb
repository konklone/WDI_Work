class Dog <ActiveRecord::Base
  validates :name, :breed, :presence => true

  has_many :dependencies
end

