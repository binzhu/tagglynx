class User < ActiveRecord::Base
  attr_accessible  :avatar, :about, :active, :blog_link, :country, :dob, :email, :fb_id, :firstlogin, :fname, :gender, :invited_by, :lastlogin, :lname, :mname, :postal, :pwd, :seed, :showemail, :timediff, :twitter_id, :username,:email_confirmation, :pwd_confirmation
  has_many :webpages
  has_many :discussions
  has_many :comments
  has_many :friends
  has_many :users_announcements
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "50x50>" },
                    :url  => "/assets/useravatar/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/useravatar/:id/:style/:basename.:extension"
                    
  validates_uniqueness_of :username
  validates_presence_of :username
  validates_uniqueness_of :email
  validates_confirmation_of :email
  validates_confirmation_of :pwd
  
  

  
  def followers
    Friend.find_all_by_followee_id(id).map{ |f| f.follower}
  end
  
  def newfollowers
    Friend.find(:all, :condition => ["followee_id = ? AND new_mark = 1", id]).map{ |f| f.follower}
  end
  
  def followees
    Friend.find_all_by_follower_id(id).map{ |f| f.followee}
  end
  
  def followees_feed
    feed = Array.new
    followees.each do |user|
      comments = Comment.find_all_by_user_id(params[:uid]).reverse.first(10)
      comments.each do |c|
      end
    end
  end

end
