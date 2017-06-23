class Photographr < ActiveRecord::Base
	has_many :categories
	has_many :albums, dependent: :destroy
	has_many :photos, dependent: :destroy
end
