class FavoritesController < ApplicationController

    before_action :authorized

def new
end

def create
    dive_bar_ids = params[:id]
    byebug
    current_user.favorites = []
    dive_bar_ids.each do |id|
        new_favorite = DiveBar.find(id)

            current_user.favorites << new_favorite
        end
        redirect_to dive_bar_path(dive_bar_id)
    end
end

end 
  