class Excretion < ApplicationRecord
	belongs_to :baby

	enum only: {"うんち" =>0, "おしっこ" =>1, "どっちも" =>2 }
end