class User < ActiveRecord::Base
    has_secure_password
    has_many :workouts
    has_many :excercises, :through => :workouts
end
