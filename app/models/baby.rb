class Baby < ApplicationRecord
	belongs_to :customer
	has_many :body_temperatures, dependent: :destroy
	has_many :body_weights, dependent: :destroy
	has_many :excretions, dependent: :destroy
	has_many :suckles, dependent: :destroy
    enum sex: { man: 0, woman: 1}
end
