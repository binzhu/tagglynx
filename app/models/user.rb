class User < ActiveRecord::Base
  attr_accessible  :avatar, :about, :active, :blog_link, :country, :dob, :email, :fb_id, :firstlogin, :fname, :gender, :invited_by, :lastlogin, :lname, :mname, :postal, :pwd, :seed, :showemail, :timediff, :twitter_id, :username,:email_confirmation, :pwd_confirmation
  has_many :webpages
  has_many :discussions
  has_many :comments
  has_many :friends
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "50x50>" },
                    :url  => "/assets/useravatar/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/useravatar/:id/:style/:basename.:extension"
  def email_confirmation
  end
  def pwd_confirmation
  end
  
  def followers
    Friend.find_all_by_followee_id(id).map{ |f| f.follower}
  end
  
  def newfollowers
    Friend.find(:all, :condition => ["followee_id = ? AND new_mark = 1", id]).map{ |f| f.follower}
  end
  
  def followees
    Friend.find_all_by_follower_id(id).map{ |f| f.followee}
  end

end
