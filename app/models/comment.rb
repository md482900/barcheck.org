class Comment < ActiveRecord::Base
  attr_accessible :bar_id, :body, :user_name, :user_id
  belongs_to :bar, :class_name => 'Bar', :foreign_key => "bar_id"
  belongs_to :user
end
