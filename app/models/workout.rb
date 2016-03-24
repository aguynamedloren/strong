class Workout < ActiveRecord::Base
  include UuidToParam

  belongs_to :routine
  has_many :exercise_sets

  validates :routine, presence: true

  scope :sorted_by_date, -> { order("date asc") }
end
