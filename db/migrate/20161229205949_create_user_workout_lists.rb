class CreateUserWorkoutLists < ActiveRecord::Migration[5.0]
  def change
    create_table :user_workout_lists do |t|
      t.string :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
