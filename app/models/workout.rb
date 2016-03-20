class Workout < ActiveRecord::Base
  belongs_to :routine

  validates :routine, presence: true
end
