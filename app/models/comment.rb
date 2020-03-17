class Comment < ApplicationRecord
	belongs_to :problem
	has_many :likes, dependent: :destroy
	def favorited_by?(customer)
    likes.where(customer_id: customer.id).exists?
  end
end
