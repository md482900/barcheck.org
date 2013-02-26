class Images < ActiveRecord::Base
  attr_accessible :bar_id
  belongs_to: bar
  has_attached_file :photo, :styles => { :small => "300x300>" }
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes 
end
