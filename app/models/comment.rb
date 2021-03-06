class Comment < ApplicationRecord
	belongs_to :problem
	belongs_to :customer
	has_many :likes, dependent: :destroy
	validates :body, presence: true, length: { in: 5..200 }
	def favorited_by?(customer)
    likes.where(customer_id: customer.id).exists?
  end
end
