class CreateExerciseSets < ActiveRecord::Migration
  def change
    create_table :exercise_sets do |t|
      t.integer :order
      t.float :weight
      t.string :weight_units
      t.integer :reps
      t.float :distance
      t.string :distance_units
      t.string :time
      t.references :exercise, index: true, foreign_key: true
      t.references :workout, index: true, foreign_key: true
      t.timestamps
    end
  end
end
