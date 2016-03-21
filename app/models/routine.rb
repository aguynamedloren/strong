class Routine < ActiveRecord::Base
  include UuidToParam

  belongs_to :user
  has_many :workouts

  validates :user, presence: true
end
