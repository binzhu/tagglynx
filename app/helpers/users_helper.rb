module UsersHelper
  def followlk(obj)
    if !User.find(session[:user_id]).followees.include?(obj.user) && User.find(session[:user_id]) != obj.user
      link_to '+', :controller => 'friends', :action => 'follow', :id=>obj.user.id
    end
  end
end
