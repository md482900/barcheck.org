class Comment < ActiveRecord::Base
  attr_accessible :bar_id, :text, :user_name
end
