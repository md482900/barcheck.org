class Bar < ActiveRecord::Base
  attr_accessible :address, :description, :name, :photo, :vote
  validate :name, :photo, :description, :vote, :address, presence: true
  validate :address, format: %r|^http(s?)://maps.google./|
  #has_attached_file :picture, :styles => { :small => "300x300>" }
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, reject_if: :all_blank
end
