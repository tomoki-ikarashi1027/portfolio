class BabyImageComment < ApplicationRecord
	belongs_to :customer
	belongs_to :baby_image
	validates :body, presence: true, length: { in: 5..200 }
end
