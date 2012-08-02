class Announcement < ActiveRecord::Base
  attr_accessible :allow_dismiss, :body, :date_inserted, :enabled, :sort
end
