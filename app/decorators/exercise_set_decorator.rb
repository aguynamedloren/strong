class ExerciseSetDecorator < Draper::Decorator
  delegate_all

  def formatted_weight
    "%g" % ("%.2f" % weight)
  end

  def weight_with_units
    "#{formatted_weight} #{weight_units}"
  end

  def volume
    "#{weight_with_units} x #{reps}"
  end

  def workout_date
    I18n.l(workout.date, format: "%a, %b %-d, %Y")
  end
end
