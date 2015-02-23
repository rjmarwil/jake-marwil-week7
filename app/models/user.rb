class User < ActiveRecord::Base

  validates :title, :day_night, presence: true

end
