class DiveBarsController < ApplicationController

    before_action :authorized
    
    def index
        @dive_bars = DiveBar.all
    end

    def show
        @dive_bar = DiveBar.find(params[:id])
    end



    private

    def review_params
        params.require(:review).permit(:user_id, :dive_bar_id, :rating, :review)
    end
end