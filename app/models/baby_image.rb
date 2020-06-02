class BabyImage < ApplicationRecord
	belongs_to :customer
	has_many :comments, dependent: :destroy
	attachment :baby_image
end
