class Dependency < ActiveRecord::Base
  # shouldn't validate a boolean as presece true (ie, not null)
  # so removed 'is_gem'...
  validates :name, :dep_type, :presence => true

  belongs_to :student
end