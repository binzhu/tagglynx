class UsersAnnouncement < ActiveRecord::Base
  attr_accessible :announcement_id, :dismiss_date, :user_id
  belongs_to :user
  belongs_to :announcement
end
