class Routine < ActiveRecord::Base
  belongs_to :user
  has_many :workouts

  validates :user, presence: true
end
