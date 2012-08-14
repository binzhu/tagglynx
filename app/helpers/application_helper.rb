module ApplicationHelper


def broadcast(channel, &block)
  message = {:channel => channel, :data => capture(&block)}
  uri = URI.parse("http://localhost:9292/faye")
  Net::HTTP.post_form(uri, :message => message.to_json)
end


  
  def crt_user
    if !session[:user_id].nil?
      User.find(session[:user_id])
    end
  end
  
  def profbox
  end
  
  def login
    link_to 'login', :controller => 'admin', :action => 'login'
  end
  
  def logout
    link_to 'Signout', :controller => 'admin', :action => 'logout'
  end
  
  def username
    link_to crt_user.username, crt_user, :class=>'username'
  end
  
  def register
    link_to 'register', '/users/register'
  end
  
  def authlink
    if !session[:user_id].nil? #user logged in
      username + " | " + logout
    else
      login + register
    end
  end
  
  def ancmts
    announcements = Array.new
    UsersAnnouncement.find(:all, :conditions => ["user_id = ? and dismiss_date is null", session[:user_id]]).map{|ua| ua.announcement_id}.each do |aid|
      announcements.push(Announcement.find(aid))
    end
    announcements
  end
  
end
