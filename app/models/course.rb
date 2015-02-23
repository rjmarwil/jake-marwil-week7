class Course < ActiveRecord::Base

  validates :password, :about, presence: true

end
