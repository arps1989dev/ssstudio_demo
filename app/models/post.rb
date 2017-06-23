class Post < ActiveRecord::Base
	require 'paperclip_processors/watermark'

	has_attached_file :image,
											content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
											# styles: { small: "64x64", med: "100x100", large: "200x200" }
                      :processors => [:watermark],
                    :styles => {
                      :medium => {
                        :geometry => "455x455#",
                        :watermark_path => WaterMark.count > 0 ? "#{WaterMark.last.watermark_image.path}" : "#{Rails.root}/public/images/watermark.png" 
                      }
                     }
	validates_attachment :image, presence: true,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
                     size: { in: 0..500.kilobytes }
  # validates_with AttachmentSizeValidator, attributes: :image, greater_than: 550.kilobytes
end
