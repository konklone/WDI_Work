class Todo < ActiveRecord::Base
  validates :task, presence: true
  after_initialize :init

  def init
    self.completed ||= false
  end
end