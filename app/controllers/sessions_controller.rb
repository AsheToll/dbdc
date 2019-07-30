class SessionsController < ApplicationController
    layout "login_layout"
    def new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user.id)
        else
            flash[:notice] = "No user/password found"
            render :new
        end
    end

    def logout
        session.delete(:user_id)
        redirect_to login_path
    end
end
