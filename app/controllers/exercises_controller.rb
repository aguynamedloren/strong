class ExercisesController < ApplicationController
  def index
    @exercises = ExerciseDecorator.decorate_collection(
      current_user.exercises.includes(:exercise_sets)
    )
  end

  def show
    @exercise = current_user.exercises.find_by_uuid(params[:id]).decorate

    @exercise_sets = ExerciseSetDecorator.decorate_collection(
      @exercise.exercise_sets
    )
  end
end
