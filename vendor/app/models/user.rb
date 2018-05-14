class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :questionnaire, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable
end
