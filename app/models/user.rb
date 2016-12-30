class User < ApplicationRecord
  has_secure_password
  has_many :user_workout_lists
  
end
