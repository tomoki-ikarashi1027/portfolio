class Problem < ApplicationRecord
	belongs_to :customer
	belongs_to :category
	has_many :comments, dependent: :destroy
end
