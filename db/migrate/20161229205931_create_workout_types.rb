class CreateWorkoutTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :workout_types do |t|
      t.references :workout, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
