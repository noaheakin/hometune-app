class UsersController < ApplicationController
    skip_before_action :fetch_user, only:[:new, :create]
    before_action :get_user, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            #MAKE HOMEPAGE!!!!!!!
            redirect_to hometune_path
        else 
            redirect_to new_user_path
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user.destroy
    end


    private

    def user_params
        params.require(:user).permit(:username, :password, :bio)
    end

    def get_user
        @user = User.find(params[:id])
    end
end
