module ApplicationHelper
  
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
    Announcement.find_all_by_enabled(1)
  end
  
end
