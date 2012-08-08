class Tag < ActiveRecord::Base
  attr_accessible :date_inserted, :name, :tagcount, :user_id
  has_many :tag_objects
  
  has_and_belongs_to_many :webpages
end
