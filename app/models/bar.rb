class Bar < ActiveRecord::Base
  attr_accessible :address, :description, :name, :picture, :vote
  validate :name, :picture, :description, :vote, :address, presence: true
  validate :url, format: %r|^http(s?)://maps.google.de/|
end
