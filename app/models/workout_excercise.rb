class WorkoutExcercise < ActiveRecord::Base
    belongs_to :workout 
    belongs_to :excercise
end
