class ReviewsController < ApplicationController
	before_action :authenticate_user!


	def new
		@game = Game.find(params[:game_id])
		@review = @game.reviews.build
		@user = current_user
	end


	def create
		@game = Game.find(params[:game_id])
		@review = @game.reviews.build(review_params)
		@user = current_user


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
		params.require(:review).permit(:rating, :body, :user_id)
	end
end
