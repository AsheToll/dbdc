class FavoritesController < ApplicationController

    before_action :authorized

    def new
    end

    def create
        @dive_bar = DiveBar.find(params[:dive_bar_id])
        if current_user.dive_bars.include?(@dive_bar)
            
        else
            current_user.dive_bars << @dive_bar
        end
        redirect_to dive_bar_path(@dive_bar)
    end

    def destroy
        @dive_bar = DiveBar.find(params[:dive_bar_id])

        current_user.dive_bars.destroy(@dive_bar.id)
        redirect_to dive_bar_path(@dive_bar)
    end
end 
  