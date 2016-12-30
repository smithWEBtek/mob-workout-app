class ListWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :user_workout_list
end
