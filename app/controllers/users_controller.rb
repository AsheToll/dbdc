class UsersController < ApplicationController
    
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        redirect_to @user
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to @user
    end

    def destroy
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :username, :fav_genre, :neighborhood)
    end
end