class AddAttachmentPhotoToImages < ActiveRecord::Migration
  def self.up
    change_table :image do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :image, :photo
  end
end
