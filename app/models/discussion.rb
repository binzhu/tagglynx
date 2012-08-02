class Discussion < ActiveRecord::Base
  attr_accessible :active, :content, :countviews, :sticky, :title, :user_id, :webpage_id
  belongs_to :webpage
  has_many :comments
  belongs_to :user
  
  
end
