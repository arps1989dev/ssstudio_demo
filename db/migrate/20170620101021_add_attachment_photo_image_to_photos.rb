class AddAttachmentPhotoImageToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :photo_image
    end
  end

  def self.down
    remove_attachment :photos, :photo_image
  end
end
