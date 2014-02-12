class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  has_and_belongs_to_many :posts
   has_many :friendships
  has_many :friends, :through => :friendships

  has_secure_password

end