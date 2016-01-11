class Review < ActiveRecord::Base
	belongs_to :game

	validates :rating, presence: true
	validates :body, presence: true, length: {minimum: 5}

end
