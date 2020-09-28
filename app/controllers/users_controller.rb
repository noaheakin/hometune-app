class UsersController < ApplicationController
    before_action :get_user, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
        @artist_comment = ArtistComment.new
    end

    def create
        @artist_comment = ArtistComment.create(artist_comment_params)
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to @user_path(@user)
    end

    def destroy
        @user.destroy
    end


    private

    def user_params
        params.require(:user).permit(:name, :genre, :bio, :popularity)
    end

    def get_user
        @user = User.find(params[:id])
    end
end
