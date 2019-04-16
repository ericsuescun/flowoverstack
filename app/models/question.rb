class Question < ApplicationRecord
	belongs_to :user

	has_many :comments
	has_many :votes
	
	validates :title, presence: true
	validates :description, presence: true

	def voted_by?(user)
	  votes.exists?(user: user)
	end
	
end
