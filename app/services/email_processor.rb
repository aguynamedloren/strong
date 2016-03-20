require "csv"

class EmailProcessor

  attr_reader :email

  def initialize(email)
    @email = email
  end

  def process
    user = User.find_or_create_by_email(email.from[:email])
    attachment = email.attachments.first
    csv_text = File.read(attachment.tempfile)
    sets = CSV.parse(csv_text, headers: true)

    sets.each do |set|
      routine = user.routines.find_or_create_by(
        name: set["Routine"]
      )

      workout = routine.workouts.find_or_create_by(
        date: set["Workout Date"].to_datetime
      )

      exercise = user.exercises.find_or_create_by(
        name: set["Exercise"]
      )

      exercise_set = exercise.exercise_sets.find_or_create_by(
        workout_id: workout.id,
        order: set["Set Order"],
        weight: set["Weight"],
        weight_units: set["Weight Units"],
        reps: set["Reps"],
        distance: set["Distance"],
        distance_units: set["Distance Units"],
        time: set["Time"]
      )
    end
  end
end
