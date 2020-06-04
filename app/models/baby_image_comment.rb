class BabyImageComment < ApplicationRecord
	belongs_to :customer
	belongs_to :baby_image
end
