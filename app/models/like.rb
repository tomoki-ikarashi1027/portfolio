class Like < ApplicationRecord
	belongs_to :customer
	belongs_to :comment
end
