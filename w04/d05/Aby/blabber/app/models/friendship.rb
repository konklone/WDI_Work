class Friendship < ActiveRecord::Base
  belongs_to :friend, :class_name => "User"
  validates :email, presence: true, uniqueness: true
  has_and_belongs_to_many :posts

  has_secure_password

end
