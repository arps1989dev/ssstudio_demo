class Category < ActiveRecord::Base
	belongs_to :photographr
	has_many :albums
	has_many :photos, dependent: :destroy
end
