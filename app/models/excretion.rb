class Excretion < ApplicationRecord
	belongs_to :user
	belongs_to :baby
	
	enum onlies: {
		excretion1: "おしっこ",
		excretion2: "うんち",
		excretion3: "おしっこ&うんち"
	}
end