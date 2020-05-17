class Excercise < ActiveRecord::Base
    has_many :workout_excercises
    has_many :workouts, through: :workout_excercises
    has_many :users, through: :workouts
end
