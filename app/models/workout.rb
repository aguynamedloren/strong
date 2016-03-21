class Workout < ActiveRecord::Base
  include UuidToParam
  
  belongs_to :routine
  has_many :exercise_sets

  validates :routine, presence: true
end
