class BodyWeight < ApplicationRecord
	belongs_to :baby
	validates :body, length: { minimum: 2 }
end
