class Bar < ActiveRecord::Base
  attr_accessible :address, :description, :name, :picture
  validate :name, :picture, :description, :vote, :address, presence: true
  validate :address, format: %r|^http(s?)://maps.google./|
  has_attached_file :picture

  make_flaggable :like
  has_many :comments
end
