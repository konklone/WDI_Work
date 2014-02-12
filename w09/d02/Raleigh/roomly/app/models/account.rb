class Account < ActiveRecord::Base
   belongs_to :user

   validates :balance, numericality: { greater_than_or_equal_to: 0 }

   def debit(amount)
      self.balance -= amount
      save
   end
end