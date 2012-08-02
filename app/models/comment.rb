class Comment < ActiveRecord::Base
  attr_accessible :content, :discussion_id, :user_id
  belongs_to :discussion
  belongs_to :user
end
