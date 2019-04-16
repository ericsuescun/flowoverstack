class Question < ApplicationRecord
	belongs_to :user

	has_many :comments, dependent: :destroy	#Los atrubutos dependen de que la pregunta exista
	has_many :votes, dependent: :destroy
	has_many :answers, dependent: :destroy
	
	validates :title, presence: true
	validates :description, presence: true

	def voted_by?(user)
	  votes.exists?(user: user)
	end
	
end
