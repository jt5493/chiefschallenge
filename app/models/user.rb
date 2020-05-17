class User < ActiveRecord::Base
    has_secure_password
    validates :name, :password, presence: true
    validates :name, uniqueness: true
    has_many :workouts
    has_many :excercises, through: :workouts
end
