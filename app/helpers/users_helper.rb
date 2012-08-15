module UsersHelper
  def followlk(obj)
    if !User.find(session[:user_id]).followees.include?(obj.user) && User.find(session[:user_id]) != obj.user
      link_to 'follow', {:controller => 'friends', :action => 'follow', :fid=>obj.user.id}, :class =>'followlk', :id=>obj.user_id
    elsif obj.user_id !=session[:user_id]
      link_to 'unfollow', {:controller => 'friends', :action => 'unfollow', :fid=>obj.user.id}, :class =>'followlk', :id=>obj.user_id
    end
  end
  
  def useravatar(user)
    if !user.avatar_file_name.nil?
      image_tag user.avatar.url(:thumb), :size=>"50x50"
    else
      image_tag 'default_avatar.jpg', :size=>"50x50"
    end
  end
  
  def noficavatar(comment)
    if !comment.user.avatar_file_name.nil?
      image_tag comment.user.avatar.url(:thumb), :size=>"25x25", :title=>comment.user.username + "@" + comment.discussion.webpage.title, :class=>"notifavatar"
    else
      image_tag 'default_avatar.jpg', :size=>"25x25", :title=>comment.user.username + "@" + comment.discussion.webpage.title, :class=>"notifavatar"
    end
  end
end
