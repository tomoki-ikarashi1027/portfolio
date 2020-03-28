class BodyTemperature < ApplicationRecord
	belongs_to :baby
	validates :body,presence: true,  length: { minimum: 2 }
	validates :body, numericality: true
end
