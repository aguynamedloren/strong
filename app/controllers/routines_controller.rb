class RoutinesController < ApplicationController
  def index
    @routines = RoutineDecorator.decorate_collection(
      current_user.routines
    )
  end

  def show
    @routine = current_user.routines.find_by_uuid(params[:id])

    @workouts = WorkoutDecorator.decorate_collection(
      @routine.workouts
    )
  end
end
