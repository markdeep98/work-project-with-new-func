class Post < ApplicationRecord
	
	validates :title, presence: true, length: {maximum: 150}
end
