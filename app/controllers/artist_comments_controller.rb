class ArtistCommentsController < ApplicationController
    before_action :get_artist_comment, only: [:show]

    def index
        @artist_comments = ArtistComment.all
    end

    def show
    end

    def new
        @artist_comment = ArtistComment.new
        @artists = Artist.all
    end

    def create
        @artist_comment = ArtistComment.new(artist_comment_params)
        @artist_comment.user_id = session[:user_id]
        @artist_comment.save
        if @artist_comment.valid?
            redirect_to artist_path(@artist_comment.artist)
        else
            flash[:errors] = @artist_comment.errors.full_messages
            redirect_to new_artist_comment_path
        end
    end

    private

    def artist_comment_params
        params.require(:artist_comment).permit(:user_id, :artist_id, :content)
    end

    def get_artist_comment
        @artist_comment = ArtistComment.find(params[:id])
    end
end
