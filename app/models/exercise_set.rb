class ExerciseSet < ActiveRecord::Base
  include UuidToParam

  belongs_to :exercise
  belongs_to :workout

  validates :exercise, presence: true
  validates :workout, presence: true

  scope :sorted_by_date, -> { joins(:workout).order("workouts.date asc") }
  scope :sorted_by_weight, -> { order(weight: :asc, reps: :asc) }
end
