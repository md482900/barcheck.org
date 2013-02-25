class AddAttachmentPhotoToBarImages < ActiveRecord::Migration
  def self.up
    change_table :bar_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :bar_images, :photo
  end
end
