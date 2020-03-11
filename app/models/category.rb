class Category < ApplicationRecord
	has_many :problem, dependent: :destroy
end
