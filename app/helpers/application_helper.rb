module ApplicationHelper
  def isSelected?(a, b)
    return "" if a.nil? or b.nil?
    (b.chomp == a.chomp) ? "selected" : ""
  end

  def icon(name)
    image_tag name, :border => "0", :width => "30", :height => "30"
  end

    def dt(datetime)
    Time.parse(datetime).strftime("%d/%m/%y")
  end

end
