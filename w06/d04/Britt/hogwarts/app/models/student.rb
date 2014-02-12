class Student < ActiveRecord::Base
  belongs_to :house
  before_save :sort
  
  def sort
    self.house_id = House.all.sample.id
  end

end