class WaterMark < ActiveRecord::Base
	has_attached_file :watermark_image,
										styles: { small: "64x64", medium: "100x100#", large: "200x200" }
	validates_attachment :watermark_image, presence: true,
												content_type: { content_type: ["image/png"] }
end
