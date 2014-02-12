class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def initialize(balance = 0)
    @balance = balance
  end

  def rent
  end
end