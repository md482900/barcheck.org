class Category < ActiveRecord::Base
  attr_accessible :name, :vote
  acts_as_rateable
end
