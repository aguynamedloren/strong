class User < ActiveRecord::Base
  devise :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :exercises
  has_many :routines
  has_many :workouts, through: :routines

  def self.find_or_create_by_email(email)
    user = User.find_by_email(email)

    if user.blank?
      user = User.create(
        email: email,
        password: SecureRandom.hex(16)
      )
    end

    user
  end
end
