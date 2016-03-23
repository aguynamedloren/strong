class WorkoutsController < ApplicationController
  def index
    @workouts = WorkoutDecorator.decorate_collection(
      current_user.workouts.includes(:routine)
    )
  end

  def show
    @workout = current_user.workouts.find_by_uuid(params[:id]).decorate

    @exercise_groups = ExerciseSetDecorator.decorate_collection(
      @workout.exercise_sets.sorted_by_type
    ).group_by(&:exercise)
  end
end
