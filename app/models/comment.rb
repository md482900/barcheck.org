class Comment < ActiveRecord::Base
  attr_accessible :bar_id, :text, :user_name
  belongs_to :bar
  belongs_to :user
end
