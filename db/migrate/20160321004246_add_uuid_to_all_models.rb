class AddUuidToAllModels < ActiveRecord::Migration
  def up
    enable_extension "uuid-ossp"

    add_column(
      :users,
      :uuid,
      :uuid,
      default: "uuid_generate_v4()",
      null: false
    )

    add_column(
      :routines,
      :uuid,
      :uuid,
      default: "uuid_generate_v4()",
      null: false
    )

    add_column(
      :workouts,
      :uuid,
      :uuid,
      default: "uuid_generate_v4()",
      null: false
    )

    add_column(
      :exercises,
      :uuid,
      :uuid,
      default: "uuid_generate_v4()",
      null: false
    )

    add_column(
      :exercise_sets,
      :uuid,
      :uuid,
      default: "uuid_generate_v4()",
      null: false
    )

    add_index :users, :uuid, unique: true
    add_index :routines, :uuid, unique: true
    add_index :workouts, :uuid, unique: true
    add_index :exercises, :uuid, unique: true
    add_index :exercise_sets, :uuid, unique: true
  end

  def down
    remove_column :routines, :uuid
    remove_column :workouts, :uuid
    remove_column :exercises, :uuid
    remove_column :exercise_sets, :uuid
  end
end
