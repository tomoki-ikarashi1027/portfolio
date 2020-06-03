class BabyImage < ApplicationRecord
	belongs_to :customer
	has_many :baby_image_comments, dependent: :destroy
	attachment :baby_image
end
