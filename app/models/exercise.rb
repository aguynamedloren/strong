class Exercise < ActiveRecord::Base
  include UuidToParam

  belongs_to :user
  has_many :exercise_sets

  validates :user, presence: true
end
