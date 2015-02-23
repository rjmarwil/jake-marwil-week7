class Course < ActiveRecord::Base

  validates :title, :day_night, presence: true

end
