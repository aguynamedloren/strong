class ExerciseSetDecorator < Draper::Decorator
  delegate_all

  def formatted_one_rep_max
    "%g" % one_rep_max
  end

  def formatted_volume
    "%g" % volume
  end

  def formatted_weight
    "%g" % ("%.2f" % weight)
  end

  def one_rep_max_with_units
    "#{formatted_one_rep_max} #{weight_units}"
  end

  def volume_with_units
    "#{formatted_volume} #{weight_units}"
  end

  def weight_with_units
    "#{formatted_weight} #{weight_units}"
  end

  def weight_and_reps
    "#{weight_with_units} x #{reps}"
  end

  def workout_date
    I18n.l(workout.date, format: "%a, %b %-d, %Y")
  end
end
