class Dependency <ActiveRecord::Base
  validates :name, :type, :is_gem, :presence => true

  belongs_to :dog
end



