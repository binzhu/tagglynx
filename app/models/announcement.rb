class Announcement < ActiveRecord::Base
  attr_accessible :allow_dismiss, :body, :date_inserted, :enabled, :sort
  has_many :users_announcements, :dependent => :delete_all

end
