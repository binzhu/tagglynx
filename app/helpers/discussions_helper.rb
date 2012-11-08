module DiscussionsHelper
  def timestamp(t)
    diff = Time.now - t
    if diff < 60
      text = "1 min"
    elsif diff < 3600
      text = "1 hour"
    elsif diff < 3600*24
      text = "1 day"
    else
      text = "Long ago"
    end
    return text
  end
end
