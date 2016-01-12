class Review < ActiveRecord::Base
	belongs_to :game
	belongs_to :user

	validates :rating, presence: true
	validates :body, presence: true, length: {minimum: 5}
	validates :user_id, presence: true
end
