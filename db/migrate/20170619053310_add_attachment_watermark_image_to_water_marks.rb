class AddAttachmentWatermarkImageToWaterMarks < ActiveRecord::Migration
  def self.up
    change_table :water_marks do |t|
      t.attachment :watermark_image
    end
  end

  def self.down
    remove_attachment :water_marks, :watermark_image
  end
end
