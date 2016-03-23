class WorkoutDecorator < Draper::Decorator
  delegate_all

  def workout_date
    I18n.l(date, format: "%a, %b %-d, %Y")
  end
end
