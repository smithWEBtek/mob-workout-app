class CreateListWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :list_workouts do |t|
      t.references :workout, foreign_key: true
      t.references :user_workout_list, foreign_key: true

      t.timestamps
    end
  end
end
