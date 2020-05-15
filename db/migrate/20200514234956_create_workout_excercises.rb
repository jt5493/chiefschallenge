class CreateWorkoutExcercises < ActiveRecord::Migration
  def change
    create_table :workout_excercises do |t|
      t.integer :workout_id
      t.integer :excercise_id
    end
  end
end
