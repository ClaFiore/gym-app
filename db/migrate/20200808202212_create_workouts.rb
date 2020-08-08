class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :day
      t.string :time
      t.integer :member_id
      t.integer :trainer_id

      t.timestamps
    end
  end
end
