class Workout < ActiveRecord::Base
    belongs_to :user
    has_many :workout_excercises
    has_many :excercises, :through => :workout_excercises
end
