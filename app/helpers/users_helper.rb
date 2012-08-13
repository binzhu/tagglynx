module UsersHelper
  def followlk(obj)
    if !User.find(session[:user_id]).followees.include?(obj.user) && User.find(session[:user_id]) != obj.user
      link_to 'follow', {:controller => 'friends', :action => 'follow', :id=>obj.user.id}, :remote => true, :class =>'followlk'
    end
  end
  
  def useravatar(user)
    if !user.avatar_file_name.nil?
      image_tag user.avatar.url(:thumb)
    else
      image_tag 'default_avatar.jpg', :size=>"50x50"
    end
    
  end
end
