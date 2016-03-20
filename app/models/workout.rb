class Workout < ActiveRecord::Base
  belongs_to :routine
  has_many :exercise_sets

  validates :routine, presence: true
end
