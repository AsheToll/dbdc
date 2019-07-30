class NeighborhoodsController < ApplicationController

    before_action :authorized
    
    def index
        @neighborhoods = Neighborhood.all
    end

    def show
        @neighborhood = Neighborhood.find(params[:id])
    end
end