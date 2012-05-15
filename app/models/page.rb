class Page < ActiveRecord::Base
  attr_accessible :content, :name, :page_type, :title
end
