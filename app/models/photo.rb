class Photo < ActiveRecord::Base
	require 'paperclip_processors/watermark'

  belongs_to :photographr
	belongs_to :album
  belongs_to :category
  has_one :selected_photo

	has_attached_file :photo_image,
											content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
											# styles: { small: "64x64", med: "100x100", large: "200x200" }
                      :processors => [:watermark],
                    :styles => {
                      :medium => {
                        :geometry => "455x455#",
                        :watermark_path => WaterMark.count > 0 ? "#{WaterMark.last.watermark_image.path}" : "#{Rails.root}/public/images/watermark.png" 
                      }
                     }
	validates_attachment :photo_image, presence: true,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
                     size: { in: 0..500.kilobytes }
end
