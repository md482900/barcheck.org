class Comment < ActiveRecord::Base
  attr_accessible :bar_id, :text, :user_name

  validates :bar_id,
  			:presence => true
  validates :user_name,
  			:presence => true
  belongs_to :bar
  belongs_to :user
end
