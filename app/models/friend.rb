class Friend < ActiveRecord::Base
  attr_accessible :followee_id, :follower_id
  belongs_to :user
  
  def follower
    User.find(follower_id)
  end
  def followee
    User.find(followee_id)
  end
end
