module ChartHelper
  def chart_filter filter_text, filter_type, filter_value, default: false
    classes = ["btn"]
    filter_param = params[filter_type]
    active = (filter_param == filter_value) || (filter_param.blank? && default)

    if active
      classes << ["active"]
    end

    link_params = {}

    ["time_interval", "query_type", "measure"].each do |param|
      if params[param]
        link_params[param] = params[param]
      end
    end

    link_params[filter_type] = filter_value

    link_to filter_text, link_params, class: classes.join(" ")
  end
end
