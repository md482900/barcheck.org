class Bar < ActiveRecord::Base
  attr_accessible :address, :description, :name, :picture
  validate :name, :picture, :description, :address, presence: true
  validate :address, format: %r|^http(s?)://maps.google./|
  has_attached_file :picture

  make_flaggable :like
  
  letsrate_rateable "ambience", "service", "price"
  has_many :comments, :dependent => :destroy
  has_many :rate



  #lightbox with paperclip
  has_attached_file :image, :styles => {
    :thumb => "240x185#", # the hash means to crop
    :large => "800x600"},
  :storage => :s3,
  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
  :path => ":attachment/:id/:style.:extension",
  :bucket => 'bucketname'
end
