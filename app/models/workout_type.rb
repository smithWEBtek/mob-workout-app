class WorkoutType < ApplicationRecord
  belongs_to :workout
  belongs_to :type
end
