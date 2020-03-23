class Problem < ApplicationRecord
	belongs_to :customer
	belongs_to :category
	has_many :comments, dependent: :destroy
	validates :body, presence: true, length: { in: 10..300 }
end
