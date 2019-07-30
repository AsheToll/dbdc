class DiveBarsController < ApplicationController

    before_action :authorized
    
    def index
        @dive_bars = DiveBar.all
    end

    def show
        @dive_bar = DiveBar.find(params[:id])
    end
end