class Question < ApplicationRecord
	belongs_to :questionnaire
	validates :title, presence: true
end
