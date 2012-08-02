class Webpage < ActiveRecord::Base
  attr_accessible :active, :domain, :title, :url, :user_id
  has_many :discussions
  belongs_to :user
end
