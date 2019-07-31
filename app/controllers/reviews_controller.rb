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

    def new_fav
        @dive_bar = DiveBar.find(params[:dive_bar_id])
    end

    def create_fav
        @dive_bar = DiveBar.find(params[:dive_bar_id])
        current_user.favorite = []
        dive_bar_id.each do |id|
            new_favorite = DiveBar.find(id)
            if id.favorite == true
                id.favorite = false
            else
                id.favorite = true
                current_user.favorites << new_favorite
            end
            redirect_to dive_bar_path(dive_bar_id)
        end
        # if true then false, if false then true
        # needs to be connected to button
    end

    private

    def review_params
        params.require(:review).permit(:user_id, :dive_bar_id, :rating, :review)
    end


end