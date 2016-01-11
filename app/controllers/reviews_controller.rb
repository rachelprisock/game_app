class ReviewsController < ApplicationController

	def new
		@game = Game.find(params[:game_id])
		@review = @game.reviews.build
	end

	def show
		@review = Review.find(params[:game_id, :id])
	end

	def create
		@game = Game.find(params[:game_id])
		@review = @game.reviews.build(review_params)

		if @review.save
			redirect_to game_path(@game)
		else
			flash.now[:error] = @review.errors.full_messages
			render 'new'
		end
	end

	def edit
		@game = Game.find(params[:game_id])
		@review = Review.find(params[:id])
	end

	def update
		@game = Game.find(params[:game_id])
		@review = Review.find(params[:id])

		if @review.update(review_params)
			redirect_to game_path(@game)
		else
			flash.now[:error] = @review.errors.full_messages
			render 'new'
		end
	end

	def destroy
		@game = Game.find(params[:game_id])
		@review = Review.find(params[:id])
		@review.destroy
		redirect_to game_path(@game)
	end

	private
	def review_params
		params.require(:review).permit(:rating, :body)
	end
end
