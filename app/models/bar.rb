class Bar < ActiveRecord::Base
  attr_accessible :address, :description, :name, :picture
  validate :name, :picture, :description, :address, presence: true
  validate :address, format: %r|^http(s?)://maps.google./|
  has_attached_file :picture

  make_flaggable :like
  
  letsrate_rateable "ambience", "service", "price"
  has_many :comments, :dependent => :destroy
end
