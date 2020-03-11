class BodyTemperature < ApplicationRecord
	belongs_to :user
	belongs_to :baby
end
