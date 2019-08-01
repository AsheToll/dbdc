class DiveBarsController < ApplicationController

    before_action :authorized
    
    def index
        @dive_bars = DiveBar.search(params[:q])
    end

    def show
        @dive_bar = DiveBar.find(params[:id])
        @favorite = (current_user.favorites.find_by(dive_bar_id: @dive_bar.id))
    end



    private

    def review_params
        params.require(:review).permit(:user_id, :dive_bar_id, :rating, :review)
    end
end