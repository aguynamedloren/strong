class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
