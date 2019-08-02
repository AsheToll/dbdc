class BandsController < ApplicationController

    before_action :authorized
    
    def index
        @bands = Band.search(params[:b])
    end

    def show
        @band = Band.find(params[:id])
    end
end