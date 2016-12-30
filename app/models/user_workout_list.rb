class UserWorkoutList < ApplicationRecord
  belongs_to :user
  has_many :list_workouts
  has_many :workouts, through: :list_workouts

end
