class Todo < ActiveRecord::Base

  validates :tasks, presence: true

end