class ExerciseSet < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :workout

  validates :exercise, presence: true
  validates :workout, presence: true
end
