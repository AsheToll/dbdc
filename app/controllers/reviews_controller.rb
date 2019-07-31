class ReviewsController < ApplicationController

    before_action :authorized

    def new
        @dive_bar = DiveBar.find(params[:dive_bar_id])
        @review = Review.new
    end
    
    def create
        @review = Review.create(review_params)
        redirect_to dive_bar_path(@review.dive_bar)
    end


    private

    def review_params
        params.require(:review).permit(:user_id, :dive_bar_id, :rating, :review)
    end


end