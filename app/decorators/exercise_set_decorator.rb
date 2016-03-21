class ExerciseSetDecorator < Draper::Decorator
  delegate_all

  def formatted_weight
    "%g" % ("%.2f" % weight)
  end

  def volume
    "#{formatted_weight} #{weight_units} x #{reps}"
  end

  def workout_date
    I18n.l(workout.date, format: "%a, %b %-d, %Y")
  end
end
