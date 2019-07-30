class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
        render :layout => "login_layout"
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to @user
        else
            render :new, :layout => "login_layout"
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to @user
    end

    def destroy
        @user.destroy
        session.delete(:user_id)
        redirect_to login_path
    end

    private

    def find_user
        @user = User.find(session[:user_id])
    end

    def user_params
        params.require(:user).permit(:name, :username, :fav_genre, :neighborhood_id, :password)
    end
end