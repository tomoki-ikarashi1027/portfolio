class Comment < ApplicationRecord
	belongs_to :problem
	has_many :likes, dependent: :destroy
end
