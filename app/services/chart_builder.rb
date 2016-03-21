class ChartBuilder
  attr_reader :exercise, :time_interval, :query_type, :measure

  def initialize(exercise, time_interval, query_type, measure)
    @exercise = exercise
    @time_interval = time_interval || :day
    @query_type = query_type || :maximum
    @measure = measure || :weight
  end

  def data
    base_data = exercise.
      exercise_sets.
      joins(:workout).
      send("group_by_#{time_interval}", "workouts.date").
      send("#{query_type}", measure)

    strip_empty(base_data)
  end

  def options
    {
      "vAxis" => {"format" => "# #{weight_units}"},
      "backgroundColor" => "#252830",
      "series" => {
        "0" => {
          "color" => "#F38921",
          "lineWidth" => "3",
        }
      },
      "tooltip" => {
        "textStyle" => {
          "fontName" => "Open Sans",
          "fontSize" => "12",
          "color" => "#444444"
        }
      }
    }
  end

  private

  def strip_empty(data)
    data.to_a.reject{ |x| x[1] == 0 }
  end

  def weight_units
    exercise.exercise_sets.first.weight_units
  end
end
