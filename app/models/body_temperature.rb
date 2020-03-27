class BodyTemperature < ApplicationRecord
	belongs_to :baby
	validates :body, length: { minimum: 2 }
	validates :body, numericality: :only_integer
end
