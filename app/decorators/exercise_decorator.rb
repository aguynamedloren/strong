class ExerciseDecorator < Draper::Decorator
  delegate_all

  def most_recent_set
    @most_recent_set ||= exercise_sets.sorted_by_date.last.decorate
  end

  def personal_record_set
    @personal_record_set ||= exercise_sets.sorted_by_weight.last.decorate
  end
end
