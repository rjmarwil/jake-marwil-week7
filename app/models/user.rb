class User < ActiveRecord::Base

  validates :password, :about, presence: true
  validates :user_name, presence: true, uniqueness: true

  has_secure_password

end
