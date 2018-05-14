class Questionnaire < ApplicationRecord
	belongs_to :user
	has_many :questions
	validates :title, 	presence: true
	validates :status, 	presence: true
end
