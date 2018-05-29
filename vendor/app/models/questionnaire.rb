class Questionnaire < ApplicationRecord
	has_many :question, dependent: :destroy
	belongs_to :user
  validates :title, presence: true, length: {minimum: 5}
  validates :status, presence: true, length: {minimum: 5}
end
