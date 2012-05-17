class Page < ActiveRecord::Base
  extend FriendlyId
  attr_accessible :content, :name, :page_type, :title
  friendly_id :name, use: [:slugged, :history]
  
end
