class Workout < ApplicationRecord
  has_many :list_workouts
  has_many :user_workout_lists, through: :list_workouts
  has_many :workout_types
  has_many :types, through: :workout_types
end
