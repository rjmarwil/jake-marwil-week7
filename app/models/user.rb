class User < ActiveRecord::Base

  validates :user_name, :password, :about, presence: true

  has_secure_password

end
