class Album < ActiveRecord::Base
	belongs_to :category
	has_many :photos
	belongs_to :photographr
end
