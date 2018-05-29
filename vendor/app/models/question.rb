class Question < ApplicationRecord
	belongs_to :user
	belongs_to :questionnaire
	validates :title, presence: true, length: {minimum: 5}
end
