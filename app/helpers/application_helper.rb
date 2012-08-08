module ApplicationHelper
  def login
    link_to 'login', :controller => 'admin', :action => 'login'
  end
  
  def logout
    link_to 'logout', :controller => 'admin', :action => 'logout'
  end
  
  def username
    link_to User.find(session[:user_id]).username, User.find(session[:user_id])
  end
  
  def register
    link_to 'register', '/users/register'
  end
  
  def authlink
    if !session[:user_id].nil? #user logged in
      username + " | " + logout
    else
      login + " | " + register
    end
  end
  
  def ancmts
    Announcement.find_all_by_enabled(1)
  end
  
end
