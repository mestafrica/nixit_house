class Faq < ApplicationRecord
	has_many :comments
  	validates :question, presence: true, length: { minimum: 5 }
  	validates :answer, presence: true
end
