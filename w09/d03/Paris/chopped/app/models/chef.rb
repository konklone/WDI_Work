class Chef < ActiveRecord::Base
  has_many :dishes

  def make_dish(name)
    self.dishes << name
    save
  end
end


