class Chef < ActiveRecord::Base
validates :name, presence: true

  def check_chefs 
    chefs = Chef.all
    if chefs > 4 || chefs < 4 
      errors.add(:chefs, "There must be four chefs.")
    end
  end
end
