module CommentsHelper
  
  def time_from_now(secs)
    if secs < 60
      "1 min ago"
    elsif secs < 600
      "over 1 min ago"
    elsif secs < 1800
      "over 10 mins ago"
    elsif secs < 3600
      "over half hour ago"
    elsif secs < 7200
      "over an hour ago"
    elsif secs < 14400
      "over two hours ago"
    else
      "long ago"
    end
  end
end
