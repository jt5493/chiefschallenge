class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :date
      t.integer :points_total
      t.integer :user_id
    end
  end
end
