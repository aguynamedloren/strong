class ExerciseSet < ActiveRecord::Base
  include UuidToParam

  belongs_to :exercise
  belongs_to :workout

  validates :exercise, presence: true
  validates :workout, presence: true

  scope :sorted_by_date, -> { joins(:workout).order("workouts.date asc") }
  scope :sorted_by_type, -> { order(exercise_id: :asc, order: :asc) }
  scope :sorted_by_weight, -> { order(weight: :asc, reps: :asc) }

  before_create :calculate_weights

  def calculate_weights
    if weight.present? && reps.present?
      self.one_rep_max = calculate_one_rep_max
      self.volume = calculate_volume
    end
  end

  def calculate_one_rep_max
    "%.2f" % (weight.to_f * (36 / (37 - reps.to_f)))
  end

  def calculate_volume
    weight.to_f * reps
  end
end
