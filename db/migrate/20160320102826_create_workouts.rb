class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.references :routine, index: true, foreign_key: true
      t.timestamps
    end
  end
end
