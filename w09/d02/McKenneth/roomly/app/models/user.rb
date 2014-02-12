class User < ActiveRecord::Base
  
  has_one :account

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true


end
