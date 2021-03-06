class Webpage < ActiveRecord::Base
  attr_accessible :active, :domain, :title, :url, :user_id
  has_many :discussions, :dependent => :delete_all
  belongs_to :user
  
  has_and_belongs_to_many :tags
end
