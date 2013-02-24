class Comment < ActiveRecord::Base
  attr_accessible :bar_id, :text, :user_name

  validates :text,
  			:presence => true,
  			:length => {:maximum => 5}

end
