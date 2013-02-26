class AddAttachmentPictureToBars < ActiveRecord::Migration
  def self.up
    change_table :bars do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :bars, :picture
  end
end
