class Micropost < ActiveRecord::Base
  attr_accessible :content, :id, :user
end
