class User < ActiveRecord::Base
  validates :email, uniqueness: true, presence: true

  has_many :accounts
  has_many :appointments
end
