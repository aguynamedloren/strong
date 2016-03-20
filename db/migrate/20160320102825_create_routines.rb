class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
