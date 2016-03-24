class RoutineDecorator < Draper::Decorator
  delegate_all

  def most_recent_workout
    @most_recent_workout ||= workouts.sorted_by_date.last.decorate
  end
end
