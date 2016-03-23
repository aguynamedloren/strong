class AddMeasuresToExerciseSets < ActiveRecord::Migration
  def change
    add_column :exercise_sets, :one_rep_max, :float
    add_column :exercise_sets, :volume, :float

    add_index :exercise_sets, :weight
    add_index :exercise_sets, :reps
    add_index :exercise_sets, :one_rep_max
    add_index :exercise_sets, :volume
  end
end
