class BabyImage < ApplicationRecord
	belongs_to :customer
	has_many :baby_image_comments, dependent: :destroy
	attachment :baby_image
	validates :body, presence: true, length: { in: 2..100 }
	validates :baby_image, presence: true
end
