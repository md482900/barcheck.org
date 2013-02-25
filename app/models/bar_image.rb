class BarImage < ActiveRecord::Base
  attr_accessible :bar_id, :caption, :photo
  belongs_to :bar
  has_attached_file :photo, :styles => {:small => "150x150>"}
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
end
