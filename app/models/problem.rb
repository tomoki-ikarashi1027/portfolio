class Problem < ApplicationRecord
	belongs_to :customer
	belongs_to :category
	has_many :comments, dependent: :destroy
	validates :body, presence: true, length: { in: 10..300 }

	def self.search(search,problem_name)
	    if search
	     	  Problem.where(['body LIKE ?', "%#{search}%"])
	    elsif problem_name
	   		  category_ids = Category.where("problem_name = ?", problem_name).pluck(:id)
			  Problem.where("category_id IN (?)",category_ids )
	    else
	          Problem.all
	    end
	end
end
