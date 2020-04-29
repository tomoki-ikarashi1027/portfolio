class MilkPowder < ApplicationRecord
	belongs_to :baby
	# validates :body,presence: true,  length: { minimum: 2 }
	# validates :body, numericality: true

	MilkPowder::SELECT_OPTIONS = [
		['３０〜９０' , [
			[30,30],
			[40,40],
			[50,50],
			[60,60],
			[70,70],
			[80,80],
			[90,90]
		 ]
		],
		['１００〜１９０' , [
			[100,100],
			[110,110],
			[120,120],
			[130,130],
			[140,140],
			[150,150],
			[160,160],
			[170,170],
			[180,180],
			[190,190]
		 ]
		],
		['２００〜３００' ,[
			[200,200],
			[210,210],
			[220,220],
			[230,230],
			[240,240],
			[250,250],
			[260,260],
			[270,270],
			[280,280],
			[290,290],
			[300,300]
		 ]
		]
	]
end
