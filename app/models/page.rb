class Page < ActiveRecord::Base
  attr_accessible :content, :name, :title, :type
end
