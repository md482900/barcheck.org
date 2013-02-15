class Bar < ActiveRecord::Base
  attr_accessible :address, :description, :name, :picture, :vote
  validate :name, :picture, :description, :vote, :address, presence: true
  validate :address, format: %r|^http(s?)://maps.google./|
  has_attached_file :picture, :styles => { :small => "300x300>" }
end
