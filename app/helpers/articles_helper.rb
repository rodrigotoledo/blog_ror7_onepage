module ArticlesHelper
  def css_alert_by_flash(type)
    case type
    when "success"
      "alert alert-success"
    when "error"
      "alert alert-danger"
    end
  end
end
