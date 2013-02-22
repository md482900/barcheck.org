class Category < ActiveRecord::Base
  attr_accessible :name
  letsrate_rateable "ambience", "service", "price"
end
