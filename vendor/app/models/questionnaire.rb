class Questionnaire < ApplicationRecord
	validates :title, 	presence: true
	validates :status, 	presence: true
end
