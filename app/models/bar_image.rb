class BarImage < ActiveRecord::Base
  attr_accessible :bar_id, :caption, :photo
  belongs_to :bar
  has_attached_file :photo, :styles => { :thumb => "120x120#", :small => "200x200#",:medium => "500X500#", :large => "800X800#" },
  					:storage => :dropbox,
    				:dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    				:dropbox_options => {
      				:path => proc { |style| "#{style}/#{id}_#{photo.original_filename}" }}
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes

end
