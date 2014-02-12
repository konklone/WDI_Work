class Account < ActiveRecord::Base
  validates :user_id, presence: true
  validates :balance, presence: true

  def charge_user
    u = User.find(self.user_id)
    if u.balance < 0
      error.add(:balance, "Not enough money")
    end
  end
end