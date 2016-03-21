class ExercisesController < ApplicationController
  def index
    @exercises = ExerciseDecorator.decorate_collection(
      current_user.exercises.includes(:exercise_sets)
    )
  end

  def show
  end
end
