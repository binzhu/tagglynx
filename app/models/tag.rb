class Tag < ActiveRecord::Base
  attr_accessible :date_inserted, :name, :tagcount, :user_id
end
